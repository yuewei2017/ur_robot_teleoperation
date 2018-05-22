#include "ros/ros.h"
#include "std_msgs/String.h"
#include "std_msgs/Float64MultiArray.h"
#include "std_msgs/Float32MultiArray.h"
#include "std_msgs/Float64.h"
#include "std_msgs/Int32MultiArray.h"

#include "FalconSDK.h"
#include "FalconPID.h"

#include <unistd.h>
#include <time.h>
#include <iostream>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <math.h>
#include <sstream>
#include <vector>
#include<sys/stat.h>
#include<sys/types.h>

#define VEL2FALCON_SCALE 0.4
#define MAX_DISP 0.4
#define PI 3.1415926

using namespace std;
using namespace libnifalcon;

double pos[3]={0,0,0},ppos[4]={0,0,0,0};
double pos_buffer[3]={0,0,0};
//double rotation=0;
double envforce[3]={0,0,0};

double out_force[4]={0,0,0,0};
double vel_ref[4] = {0};

std_msgs::Float64MultiArray force_msg;

void VelCallback(const std_msgs::Float32MultiArray::ConstPtr& msg)
{
	pos_buffer[0] = msg->data[7]*VEL2FALCON_SCALE;		//Y in falcon frame
	pos_buffer[1] = msg->data[8]*VEL2FALCON_SCALE;		//x in falcon frame
	pos_buffer[2] = -msg->data[6]*VEL2FALCON_SCALE;		//z in falcon frame
}

int main(int argc, char **argv)
{
	FalconPID fpid;		// class declarition
	fpid.option=2;		// enable the velocity mapping under admittance mode

	fpid.fal_open();	// open device 
	fpid.init();		// initiating device

	ros::init(argc, argv, "falcon_ram");

	ros::NodeHandle n;

	ros::Publisher falcon_pub = n.advertise<std_msgs::Float64MultiArray>("VICON_CON", 100);
	ros::Subscriber vel_sub = n.subscribe("vehicle_state", 100, VelCallback);

	ros::Rate loop_rate(2000);
	double time = ros::Time::now().toSec();

	int count = 0;
	while (ros::ok()){
		static double buf_eforce[3]={0,0,0};
		if (pos_buffer[0]>MAX_DISP){	
			pos[0] = MAX_DISP;
		}else{
			if (pos_buffer[0]<-MAX_DISP){
				pos[0] = -MAX_DISP;
			}else{
				pos[0] = pos_buffer[0];
			}
		}
		if( pos_buffer[1]>MAX_DISP){	
			pos[1] = MAX_DISP;
		}else		{
			if( pos_buffer[1]<-MAX_DISP){
				pos[1] = -MAX_DISP;
			}else{
				pos[1] = pos_buffer[1];
			}
		}
		if( pos_buffer[2]>MAX_DISP){	
			pos[2] = MAX_DISP;
		}else{
			if( pos_buffer[2]<-MAX_DISP){
				pos[2] = -MAX_DISP;
			}else{
				pos[2] = pos_buffer[2];
			}
		}
		
		fpid.run(pos, out_force, buf_eforce, ppos); // call falcon pid controller, servo the velocity position, and measure the force input from user

		if (ppos[3]<0){
			ppos[3] += 2*PI;
		}else{
			if (ppos[3]>2*PI){
				ppos[3] -= 2*PI; 
			}
		}

/*
		force_msg.data.push_back((0.125-ppos[2])*40);// x in body fixed frame
		force_msg.data.push_back(ppos[0]*40);// y in body fixed frame
		force_msg.data.push_back(ppos[1]*24);// z in body fixed frame
		force_msg.data.push_back(ppos[3]);// yaw in body fixed frame
		force_msg.data.push_back(time);
*/

		time = ros::Time::now().toSec();
	
		vel_ref[0] = -out_force[2]/4.0*3.0;
		if(vel_ref[0] > 2){
			vel_ref[0]  = 2;
		}
		if(vel_ref[0] < -2){
			vel_ref[0]  = -2;
		}

		vel_ref[1] =  out_force[0]/3.0*3.0;
		if(vel_ref[1] > 2){
			vel_ref[1]  = 2;
		}
		if(vel_ref[1] < -2){
			vel_ref[1]  = -2;
		}

		vel_ref[2] =  out_force[1]/4.0*3.0;
		if(vel_ref[2] > 2){
			vel_ref[2]  = 2;
		}
		if(vel_ref[2] < -2){
			vel_ref[2]  = -2;		
		}
		
		if(ppos[3] > PI)
			vel_ref[3] = ppos[3] - PI * 2;
		else if(vel_ref[3] < -PI)
			vel_ref[3] = ppos[3] + PI * 2;
		else
			vel_ref[3] = ppos[3];

		cout<<"px: "<<(0.12-ppos[2])*24<<",py: "<<ppos[0]*24<<",pz: "<<ppos[1]*24<<", yaw: "<<vel_ref[3]<<endl;

		force_msg.data.push_back(vel_ref[0]);//x in body fixed frame
		force_msg.data.push_back(vel_ref[1]);// y in body fixed frame
		force_msg.data.push_back(0);// 0
		force_msg.data.push_back(vel_ref[3]);// yaw in body fixed frame
		force_msg.data.push_back(vel_ref[2]);// z in body fixed frame
		force_msg.data.push_back((0.12-ppos[2])*24);// px in body fixed frame
		force_msg.data.push_back(ppos[0]*24);// py in body fixed frame
		force_msg.data.push_back(ppos[1]*24);// pz in body fixed frame
		force_msg.data.push_back(time);

		falcon_pub.publish(force_msg);
		force_msg.data.clear();

		ros::spinOnce();
		loop_rate.sleep();
		++count;
	}

	fpid.fal_close();
	return 0;
}
