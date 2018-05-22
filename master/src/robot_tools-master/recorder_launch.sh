#!/bin/sh
rostopic echo -p /pose_publisher/pose > /home/dong/record/robot_pose.txt|rostopic echo -p /haptic/pose > /home/dong/record/pose.txt|rostopic echo -p /haptic/pose_1 > /home/dong/record/pose_1.txt|rostopic echo -p /haptic/twist > /home/dong/record/twist.txt|rostopic echo -p /haptic/force > /home/dong/record/force.txt|rostopic echo -p /joint_states > /home/dong/record/jount_states.txt
