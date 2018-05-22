#include <iostream>
#include <string>
#include <cmath>
#include <ros/ros.h>
#include <rosfalcon/falconPos.h>
#include <rosfalcon/falconForces.h>
#include <geometry_msgs/Wrench.h>
#include <geometry_msgs/Vector3.h>
//double fx,fy,fz;

class testRos
{	
//	rosfalcon::falconForces forces;
	geometry_msgs::Vector3(vector);
	boost::array<double,3> force;
	ros::Publisher pub;
	ros::Subscriber sub; 
  	ros::NodeHandle n;
	void forceCallback(const geometry_msgs::WrenchConstPtr& msg)
	{
	force[0] = msg->force.x;
	force[1] = msg->force.y;
	force[2] = msg->force.z;
//	forces.X=force[0]/1000000-0.5;
//	forces.Y=force[1]/1000000+0.7;
//	forces.Z=-force[2]/1000000-3.8;
	force[0]=force[0]/1000000;
	force[1]=force[1]/1000000;
	force[2]=force[2]/1000000;
	force[0]=floor(force[0]*1000.00f)/1000.00f;
	force[1]=floor(force[1]*1000.00f)/1000.00f;
	force[2]=floor((force[2]-0.05)*1000.00f)/1000.00f;
	vector.x=force[0]-1.9;
	vector.y=-force[1]-2.1;
	vector.z=-force[2]+2.7;
//-1.76 +2.65 -3.73
//	std::cout <<"Fx="<<forces<<std::endl; 
	pub.publish(vector);
	}
	public:
	void sub_and_pub()
{
//	pub = n.advertise<rosfalcon::falconForces>("/falconForces",10);
	pub = n.advertise<geometry_msgs::Vector3>("/falconForces",1);
	sub = n.subscribe("ati_ft_data", 1,&testRos::forceCallback,this);
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

