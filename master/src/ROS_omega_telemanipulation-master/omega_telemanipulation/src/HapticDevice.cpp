#include "/home/dong/Project/master/src/ROS_omega_telemanipulation-master/omega_telemanipulation/include/HapticDevice.h" 

// haptic device API
#include "/home/dong/Project/master/src/ROS_omega_telemanipulation-master/omega_telemanipulation/include/dhdc.h"    // Absolute path 
#include "std_msgs/Int8MultiArray.h"


HapticDevice::HapticDevice(ros::NodeHandle & node, float loop_rate, bool set_force): loop_rate_(loop_rate)
{
    nh_ = node;

    dev_id_ = -2; // we set a value not in API defined range
    device_enabled_ = -1;

    set_force_ = set_force;

    for (int i = 0; i<3;i++) {
        position_[i] = 0.0;
    }

    button0_state_ = false;
    keep_alive_ = false;
    force_released_ = true;

    force_.resize(3);
    force_[0] = 0.0;
    force_[1] = 0.0;
    force_[2] = 0.0;

    SetForceLimit(11.0, 11.0, 11.0);

    // connect to hardware device
    device_count_ = dhdGetDeviceCount();

    // we only accept one haptic device.
    if ( device_count_ >= 1) {
        dev_id_ = dhdOpenID(0); // if open failed, we will get -1, and sucess with 0.
        if ( dev_id_ < 0) {
            ROS_INFO("error: handler device: %s\n", dhdErrorGetLastStr());
            device_enabled_ = false;
            return;
        }
    } else {
        ROS_INFO("No handler device find! %s\n", dhdErrorGetLastStr());
        device_enabled_ = false;
        return;
    }

    device_enabled_ =true;
}


HapticDevice::~HapticDevice()
{
    dev_id_ = -1;
    device_count_ = 0;
    keep_alive_ = false;
    if (dev_op_thread_)
    {
        dev_op_thread_->join();
    }
}

void HapticDevice::PublishHapticData()   // Declare variables
{
    geometry_msgs::PoseStamped Pose;
    geometry_msgs::TwistStamped Twist;
    Pose.header.frame_id = ros::this_node::getName();
    Pose.header.stamp = ros::Time::now();
    Twist.header.frame_id = ros::this_node::getName();
    Twist.header.stamp = ros::Time::now();
    Pose.pose.position.x = position_[0];
    Pose.pose.position.y = position_[1];
    Pose.pose.position.z = position_[2];
    Pose.pose.orientation.x = OrientationRad_[0];
    Pose.pose.orientation.y = OrientationRad_[1];
    Pose.pose.orientation.z = OrientationRad_[2];
    Twist.twist.linear.x = LinearVelocity_[0];
    Twist.twist.linear.y = LinearVelocity_[1];
    Twist.twist.linear.z = LinearVelocity_[2];
    //Twist.twist.angular.x = AngularVelocityRad_[0];
    //Twist.twist.angular.y = AngularVelocityRad_[1];
    //Twist.twist.angular.z = AngularVelocityRad_[2];


    std_msgs::Int8MultiArray button_stat;
    button_stat.data.push_back(button0_state_);

    pose_pub_.publish(Pose);
    twist_pub_.publish(Twist);
    button_state_pub_.publish(button_stat);
}

void HapticDevice::RegisterCallback()
{
    pose_topic_ = "/haptic/pose";
    twist_topic_ = "/haptic/twist";
    buttons_topic_ = "/haptic/button_state";
    force_topic_ = "/haptic/force";

    pose_pub_ = nh_.advertise<geometry_msgs::PoseStamped>(pose_topic_.c_str(),1);
    twist_pub_ = nh_.advertise<geometry_msgs::TwistStamped>(twist_topic_.c_str(),1);
    button_state_pub_ = nh_.advertise<std_msgs::Int8MultiArray>(buttons_topic_.c_str(), 1);
    force_sub_ = nh_.subscribe<geometry_msgs::Vector3>(force_topic_.c_str(),1, &HapticDevice::ForceCallback, this);
}

void HapticDevice::ForceCallback(const geometry_msgs::Vector3::ConstPtr &data)
{
    // wrapper force
    SetForce(data->x, data->y, data->z);
//ROS_INFO(" force is: %f ,%f ,%f", data->x, data->y, data->z);
}

void HapticDevice::GetHapticDataRun()
{   // get and we will publish immediately


    double feed_force[3] = {0.0, 0.0, 0.0};
    double current_position[3] = {0.0, 0.0, 0.0};
    double current_OrientationRad[3] = {0.0, 0.0, 0.0};
    double current_LinearVelocity[3] = {0.0, 0.0, 0.0};
    //double current_AngularVelocityRad[3] = {0.0, 0.0, 0.0};



    while (ros::ok() && (keep_alive_ == true)) {

        if (device_count_ >= 1 && dev_id_ >= 0) {
                dhdGetPositionAndOrientationRad(&current_position[0], &current_position[1], &current_position[2],&current_OrientationRad[0],&current_OrientationRad[1],&current_OrientationRad[2]);
                position_[0] = current_position[0];
                position_[1] = current_position[1];
                position_[2] = current_position[2];
		OrientationRad_[0] = current_OrientationRad[0];
		OrientationRad_[1] = current_OrientationRad[1];
		OrientationRad_[2] = current_OrientationRad[2];
                dhdGetLinearVelocity(&current_LinearVelocity[0], &current_LinearVelocity[1], &current_LinearVelocity[2]);
                LinearVelocity_[0] = current_LinearVelocity[0];
                LinearVelocity_[1] = current_LinearVelocity[1];
                LinearVelocity_[2] = current_LinearVelocity[2];
                //dhdGetAngularVelocityRad(&current_AngularVelocityRad[0], &current_AngularVelocityRad[1], &current_AngularVelocityRad[2]);
                //AngularVelocityRad_[0] = current_AngularVelocityRad[0];
                //AngularVelocityRad_[1] = current_AngularVelocityRad[1];
                //AngularVelocityRad_[2] = current_AngularVelocityRad[2];
                
                //ROS_INFO(" Position is: %f ,%f ,%f", position_[0], position_[1], position_[2]);

                //ROS_INFO(" Orientation is: %f ,%f ,%f", OrientationRad_[0],OrientationRad_[1],OrientationRad_[2]);

                //ROS_INFO(" LinearVelocity is: %f ,%f ,%f", LinearVelocity_[0], LinearVelocity_[1], LinearVelocity_[2]);

                //ROS_INFO(" AngularVelocityRad is: %f ,%f ,%f", AngularVelocityRad_[0], AngularVelocityRad_[1], AngularVelocityRad_[2]);

                button0_state_ = dhdGetButton(0, dev_id_);
        }

        PublishHapticData();

//        apply force
        if (set_force_) {
            val_lock_.lock();
            feed_force[0] = force_[0];
            feed_force[1] = force_[1];
            feed_force[2] = force_[2];
  	    dhdEnableForce (DHD_ON);

	    dhdSetForce(feed_force[0],feed_force[1],feed_force[2]);
            val_lock_.unlock();
      }


        loop_rate_.sleep();
    }

}

void HapticDevice::SetForce(double x, double y, double z)
{
    double input_force[3] = {0.0, 0.0, 0.0};

    if (set_force_)
    {
        val_lock_.lock();
        input_force[0] = x;
        input_force[1] = y;
        input_force[2] = z;
ROS_INFO(" force is: %f ,%f ,%f", input_force[0], input_force[1], input_force[2]);
        VerifyForceLimit(input_force, force_);
       force_released_ = false;
        val_lock_.unlock();
    }
}

void HapticDevice::SetForceLimit(double x, double y, double z)
{
    force_x_limit_ = x;
    force_y_limit_ = y;
    force_z_limit_ = z;
}


void HapticDevice::VerifyForceLimit(double input_force[], std::vector<double> & output)
{
    if (output.size() != 3)
    {
        output.resize(3);
    }

    if (input_force[0] < -force_x_limit_) input_force[0] = -force_x_limit_;
    if (input_force[1] < -force_y_limit_) input_force[1] = -force_y_limit_;
    if (input_force[2] < -force_z_limit_) input_force[2] = -force_z_limit_;

    if (input_force[0] > force_x_limit_) input_force[0] = force_x_limit_;
    if (input_force[1] > force_y_limit_) input_force[1] = force_y_limit_;
    if (input_force[2] > force_z_limit_) input_force[2] = force_z_limit_;
    output[0]=input_force[0];
    output[1]=input_force[1];
    output[2]=input_force[2];
//	    ROS_INFO(" force is: %f ,%f ,%f", output[0], output[1], output[2]);
}

void HapticDevice::Start()
{   
    if (!device_enabled_)
    {
        return; 
    }
    
    RegisterCallback();
    ros::AsyncSpinner spinner(2);
    spinner.start();

    dev_op_thread_ = std::make_shared<boost::thread>(boost::bind(&HapticDevice::GetHapticDataRun, this));
    keep_alive_ = true;

    while (ros::ok() && (keep_alive_ == true)) {
        ros::Duration(0.0005).sleep();
        // ROS_INFO("working in main loop");
        //  usleep(1000);
    }

    keep_alive_ = false;
    spinner.stop();
}
