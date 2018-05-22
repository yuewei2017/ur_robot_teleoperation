//
// Created by stefan spiss on 06.07.17.
//

#pragma once

#include <ros/ros.h>
#include <geometry_msgs/Vector3Stamped.h>
#include <geometry_msgs/Vector3.h>
#include <std_msgs/Int8MultiArray.h>

/* Chai3d library */
#include <chai3d.h>

#include <string>
#include <memory>
#include <boost/thread/thread.hpp>

/* Maximum rendering force*/
#define MAX_FORCE 10.0f

class FalconRosDriver {
public:
    FalconRosDriver(ros::NodeHandle node, float loopRate, std::string positionTopic, std::string velocityTopic, std::string buttonsTopic, std::string forceSubTopic, bool forceOutput = false);
    ~FalconRosDriver();

    /**
     * Saturation
     *
     * Checks if force is higher than MAX_FORCE and chooses the smaller one.
     */
    void saturatAndSetForces(double x, double y, double z);

    void publishFalconData();

    void startFalconRosNode();

    void cleanUpFalcon();

private:
    ros::NodeHandle node;
    ros::Publisher position_pub;
    ros::Publisher velocity_pub;
    ros::Publisher buttons_pub;
    ros::Subscriber force_sub;
    ros::Rate loopRate;

    std::string positionTopic;
    std::string velocityTopic;
    std::string buttonsTopic;
    std::string forceSubTopic;

    // a haptic device handler
	chai3d::cHapticDeviceHandler* handler;

	// a pointer to the current haptic device
	chai3d::cGenericHapticDevicePtr hapticDevice;

    /*  End-effector position   */
    chai3d::cVector3d position;
    /*  End-effector velocity   */
    chai3d::cVector3d velocity;
    /* End-effector buttons pressed */
    std::vector<int> buttons;

    /*  Rendering force   */
    chai3d::cVector3d force;

    /* Should force be rendered */
    bool forceOutput;

    bool hapticLoop;

    bool forceConsumed;

    int initFalcon();

    void forceCallback(const geometry_msgs::Vector3::ConstPtr& data);

    /* Callback for haptics loop */
    void falconCallback();
};
