#include <ros/ros.h>
#include <sensor_msgs/JointState.h>
#include <std_msgs/String.h>

void jointstates_subCB(const sensor_msgs::JointState &_msg)
{
	ROS_INFO("I HAVE RECEIVED.");
}
int main(int argc, char **argv)
{
	std::string robot_ip;
	ros::init(argc, argv, "robot_test1");
	ros::NodeHandle n;
	ros::param::get("robot_ip", robot_ip);
	ros::Subscriber ur_jointstate_sub = n.subscribe("/joint_states", 1, jointstates_subCB);
	ros::Publisher ur_test_pub = n.advertise<std_msgs::String>("ur_control", 1);
	ros::Rate r(1);
	
	while(ros::ok())
	{
		r.sleep();
		//ROS_INFO("I HAVE RECEIVED.");
		ros::spinOnce();
		//ros::spin();
	}
	return 0;
}
