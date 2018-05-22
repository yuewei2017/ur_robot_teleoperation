#! /usr/bin/env python
import actionlib
import rospy
from std_msgs.msg import String
from trajectory_msgs.msg import *
from sensor_msgs.msg import Joy
from sensor_msgs.msg import JointState
from math import pi
import roslib; roslib.load_manifest('ur_driver')

key_mapping = {'w':[0.5,0.05],'x':[-0.5,0.05],'a':[-0,0],
				'd':[0,0],'s':[0,0]}


JOINT_NAMES = ['shoulder_pan_joint', 'shoulder_lift_joint', 'elbow_joint',
               'wrist_1_joint', 'wrist_2_joint', 'wrist_3_joint']


def call_back(msg,twist_pub):
	global d_duration
	global g
	v1 = 0
	v2 = 0 
	v3 = 0
	if msg.axes[0] > 0.5:
		v1 = 0.5
	if msg.axes[1] > 0.5:
		v2 = 0.5
	if msg.axes[2] > 0.5:
		v3 = 0.5
	print('I hear',d_duration)


	g = JointTrajectory()
	g.joint_names =  JOINT_NAMES
	joint_states = rospy.wait_for_message("joint_states", JointState)
	joints_pos = joint_states.position
	joint_states = rospy.wait_for_message("joint_states", JointState)
	joints_pos = joint_states.position
	'''
	g.points = [JointTrajectoryPoint(positions=joints_pos, velocities=[0]*6, time_from_start=rospy.Duration(d_duration))]
	'''
	

	joints_pos_new = joint_states.position
	joints_pos_new_list = list(joints_pos_new) 
	joints_pos_new_list[3] = joints_pos_new_list[3]+pi*v1
	joints_pos_new_list[4] = joints_pos_new_list[4]+pi*v2
	joints_pos_new_list[5] = joints_pos_new_list[5]+pi*v3
	joints_pos_new = tuple(joints_pos_new_list)
	v = [0,0,0,0,0,0]
	v[3] = 1.6*v1
	v[4] = 1.6*v2
	v[5] = 1.6*v3

	v_v = [0,0,0,0,0,0]
	v_v[3] = 0.8*v1
	v_v[4] = 0.8*v2
	v_v[5] = 0.8*v3

	g.points.append(
		JointTrajectoryPoint(positions=joints_pos_new,velocities=v,accelerations = v_v,time_from_start=rospy.Duration(d_duration)))
	d_duration+=0.05
	twist_pub.publish(g)

def main():
	global client
	global d_duration
	global g
	
	rospy.init_node('keys_to_twist')
	twist_pub = rospy.Publisher('/ur_driver/joint_speed',JointTrajectory,queue_size = 10)
	d_duration = 0.0
	rate = rospy.Rate(50)
	rospy.Subscriber('left_joy',Joy,call_back,twist_pub,queue_size = 10)
	while not rospy.is_shutdown():
		rate.sleep()
	'''
	rospy.Subscriber('left_joy',Joy,call_back,twist_pub)
	g = JointTrajectory()
	g.joint_names =  JOINT_NAMES
	joint_states = rospy.wait_for_message("joint_states", JointState)
	joints_pos = joint_states.position
	g.points = [JointTrajectoryPoint(positions=joints_pos, velocities=[0]*6, time_from_start=rospy.Duration(d_duration))]
	d_duration += 0.1
	g.points.append(
                JointTrajectoryPoint(positions=joints_pos, velocities=[0]*6, time_from_start=rospy.Duration(d_duration)))
	
	while not rospy.is_shutdown():
		twist_pub.publish(g)
		rate.sleep()
	'''

if __name__ == '__main__': main()