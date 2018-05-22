#ifndef __MAC_TELEMANIPULATION_OO_H__
#define __MAC_TELEMANIPULATION_OO_H__

#include <ros/ros.h>
#include <visualization_msgs/Marker.h>
#include <visualization_msgs/MarkerArray.h>
#include <geometry_msgs/PoseStamped.h>

class MAS_OO{
public:    
    MAS_OO(ros::NodeHandle*);
    bool run();
protected:
    ros::NodeHandle *n;
    ros::Publisher marker_pub;
    ros::Publisher c_r_pub;
    ros::Publisher s_g_pub;
    ros::Subscriber sub_c_r_c; //Cube, red, collision
    ros::Subscriber sub_s_g_c; //Sphere, green, collision
    visualization_msgs::MarkerArray marker_array_msg;
    geometry_msgs::PoseStamped c_r_c_msg;
    geometry_msgs::PoseStamped s_g_c_msg;
    void positionCallbackR(const geometry_msgs::PoseStamped::ConstPtr &msg);
    void positionCallbackG(const geometry_msgs::PoseStamped::ConstPtr &msg);
    geometry_msgs::PoseStamped pose;
    void initialize_stuff();
};
#endif
