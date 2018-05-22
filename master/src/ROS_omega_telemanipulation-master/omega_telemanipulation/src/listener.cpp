#include <iostream>
#include <string>
#include <cmath>
#include <ros/ros.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/Pose.h>
//double fx,fy,fz;

class testRos
{	
//	rosfalcon::falconForces forces;
	geometry_msgs::PoseStamped world_pose;
	boost::array<double,3> Pos;
	ros::Publisher pub;
	ros::Subscriber sub; 
  	ros::NodeHandle n;
	void forceCallback(const geometry_msgs::PoseStampedConstPtr& msg)
	{
        Pos[0] = msg->pose.position.x;
        Pos[1] = msg->pose.position.y;
        Pos[2] = msg->pose.position.z;

        world_pose.pose.position.x = Pos[0];
        world_pose.pose.position.y = Pos[1];
        world_pose.pose.position.z = Pos[2];	
//-1.76 +2.65 -3.73
//	std::cout <<"Fx="<<forces<<std::endl; 
	pub.publish(world_pose);
	}
	public:
	void sub_and_pub()
{
//	pub = n.advertise<rosfalcon::falconForces>("/falconForces",10);
	pub = n.advertise<geometry_msgs::PoseStamped>("/haptic/world_pose",1);
	sub = n.subscribe("/haptic/pose", 1,&testRos::forceCallback,this);
//	pub.publish(vector);
	//pub = n.advertise<rosfalcon::falconForces>("/falconForces",100);
//	pub = n.advertise<geometry_msgs::Wrench>("/falconForces",100);

}
	~testRos()
        {
        }
};

int main(int argc, char *argv[])
{
  ros::init(argc, argv, "listener");
//  while(ros::ok())
//{
  testRos tR;
  ros::Rate loop_rate(1000);
  while(ros::ok())
  {
  tR.sub_and_pub();
  ros::spin();
  }
  loop_rate.sleep();  
  ros::shutdown();
  return 0;
}

