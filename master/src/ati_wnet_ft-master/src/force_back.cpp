#include <ros/ros.h>
//#include <boost/thread/thread.hpp>
//#include <memory>
#include <geometry_msgs/Wrench.h>
#include <geometry_msgs/Vector3Stamped.h>

//#include <falcon_ros/FalconRosDriver.h>

class testforce
{	
	ros::Publisher pub;
	ros::Subscriber sub; 
  	ros::NodeHandle n;
	boost::array<double,3> forces;
        geometry_msgs::Vector3Stamped force;
	void forceCallback(const geometry_msgs::WrenchConstPtr& msg)
	{
        force.header.frame_id = ros::this_node::getName();
        force.header.stamp = ros::Time::now();
        forces[0] = msg->force.y;
        forces[1] = msg->force.z;
        forces[2] = msg->force.x;
        force.vector.x = forces[0]-1.9;
        force.vector.y = forces[1]-2.1;
        force.vector.z = forces[1]+2.7;
	pub.publish(force);
	}
	public:
	void sub_and_pub()
	{
	pub = n.advertise<geometry_msgs::Vector3Stamped>("/falcon/force",1);
	sub = n.subscribe("ati_ft_data",1,&testforce::forceCallback,this);

	}
	~testforce()
	{
	}
};
int main1(int argc, char *argv[])
{
  	ros::init(argc, argv, "force_back");
  	testforce tf;
  	ros::Rate loop_rate(2000);
  	while(ros::ok())
  	{
  	tf.sub_and_pub();
  	ros::spin();
  	}
  	loop_rate.sleep();  
  	ros::shutdown();
  	return 0;
}
