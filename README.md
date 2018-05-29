# ur_robot_teleoperation
#There is a ROS project to control the UR3 by omega_6 haptic device. The contact force was measured by ATI mini40 and 3-DOS force feedback was supported.The haptic feedback can be controlled in /haptic_ros_node  by type "true or false".  
launch /robot_test1/ur_moderen_driver/ur3_bringup.launch to open the ur3_robot. 
launch /robot_test1/robot_message to open the slave node.
launch /master/src/ati_wnet/.launch.launch to open the transducer node.
launch /master/src/omega_tele.launch to open the master node
# Position control was used in robot control, and the kinematic problem was solved by KDL library。
