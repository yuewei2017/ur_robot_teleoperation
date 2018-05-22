/*
 * Copyright (c) 2013, University of Massachusetts Lowell.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 *     * Redistributions of source code must retain the above copyright
 *       notice, this list of conditions and the following disclaimer.
 *     * Redistributions in binary form must reproduce the above copyright
 *       notice, this list of conditions and the following disclaimer in the
 *       documentation and/or other materials provided with the distribution.
 *     * Neither the name of University of Massachusetts Lowell. nor the
 *       names of its contributors may be used to endorse or promote products
 *       derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 */

/* Author: Mikhail Medvedev */

#include <ros/ros.h>

#include <tf/transform_listener.h>
#include <geometry_msgs/PoseStamped.h>

namespace robot_tools
{

/*
 * Listen for /tf and publish a Pose of Target frame relative to Base frame
 * with given frequency.
 */
class PosePublisher
{
private:
    ros::NodeHandle nh_;
    tf::TransformListener tf_listener_;
    ros::Publisher pub_pose_;

public:
    PosePublisher();
    virtual ~PosePublisher();
};

} /* namespace robot_tools */

int main(int argc, char **argv)
{
    ros::init(argc, argv, "pose_publisher");
    robot_tools::PosePublisher pp;
    return 0;
}

namespace robot_tools
{
PosePublisher::PosePublisher()
{
    ros::NodeHandle private_nh("~");
    std::string base_frame_id;
    private_nh.param("base", base_frame_id, std::string("base"));
    std::string target_frame_id;
    private_nh.param("tool0", target_frame_id, std::string("tool0"));
    double frequency;
    private_nh.param("frequency", frequency, 125.0);

    pub_pose_ = private_nh.advertise<geometry_msgs::PoseStamped>("pose", 1);

    geometry_msgs::PoseStamped zero_pose;
    zero_pose.header.frame_id = base_frame_id;
    zero_pose.pose.orientation.w = 1;

    geometry_msgs::PoseStamped pose;
    ros::Rate rate(frequency);
    while (ros::ok())
    {
        try
        {
            zero_pose.header.stamp = ros::Time::now();
            tf_listener_.waitForTransform(target_frame_id, base_frame_id,
                    zero_pose.header.stamp, ros::Duration(1));
            tf_listener_.transformPose(target_frame_id, zero_pose, pose);
            pub_pose_.publish(pose);
        } catch (std::runtime_error &ex)
        {
            ROS_WARN_STREAM_THROTTLE(5, "Could not transform: " << ex.what());
        }
        rate.sleep();
        ros::spinOnce();
    }
}

PosePublisher::~PosePublisher()
{
}

} /* namespace robot_tools */
