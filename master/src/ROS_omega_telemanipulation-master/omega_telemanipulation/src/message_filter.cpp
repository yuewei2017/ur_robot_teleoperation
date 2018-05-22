#include <message_filters/subscriber.h>
#include <message_filters/time_synchronizer.h>
#include <message_filters/sync_policies/approximate_time.h>
#include <geometry_msgs/PoseStamped.h>

using namespace message_filters;
using namespace geometry_msgs;

ros::Publisher position_pub;

void callback(const geometry_msgs::PoseStampedConstPtr& msg1, const geometry_msgs::PoseStampedConstPtr& msg2)
{
    geometry_msgs::PoseStamped Pose;
    Pose.header.frame_id = ros::this_node::getName();
    Pose.header.stamp = ros::Time::now();
    boost::array<double,6> pose1,pose2,pose3;	
    pose1[0]=msg1->pose.position.x;
    pose1[1]=msg1->pose.position.y;
    pose1[2]=msg1->pose.position.z;
    pose1[3]=msg1->pose.orientation.x;
    pose1[4]=msg1->pose.orientation.y;
    pose1[5]=msg1->pose.orientation.z;
    pose2[0]=msg2->pose.position.x;
    pose2[1]=msg2->pose.position.y;
    pose2[2]=msg2->pose.position.z;

    pose3[0]=pose1[0]+pose2[0];
    pose3[1]=pose1[1]+pose2[1];
    pose3[2]=pose1[2]+pose2[2];
    pose3[3]=pose1[3];
    pose3[4]=pose1[4];
    pose3[5]=pose1[5];

    Pose.pose.position.x = pose3[0];
    Pose.pose.position.y = pose3[1];
    Pose.pose.position.z = pose3[2];	
    Pose.pose.orientation.x = pose3[3];
    Pose.pose.orientation.y = pose3[4];
    Pose.pose.orientation.z = pose3[5];
    //pos.vector.x=pos3[0];
    //pos.vector.y=pos3[1];
    //pos.vector.z=pos3[2];
    position_pub.publish(Pose);
 }

int main(int argc, char** argv)
{

  ros::init(argc, argv, "message_filter");

  ros::NodeHandle nh;
  message_filters::Subscriber<geometry_msgs::PoseStamped> sub1(nh, "/haptic/pose", 1);
  message_filters::Subscriber<geometry_msgs::PoseStamped> sub2(nh, "/haptic/world_pose", 1);

  position_pub = nh.advertise<geometry_msgs::PoseStamped>("/haptic/pose_1", 1);

typedef sync_policies::ApproximateTime<geometry_msgs::PoseStamped,geometry_msgs::PoseStamped> MySyncPolicy;

  Synchronizer<MySyncPolicy> sync(MySyncPolicy(10), sub1, sub2);
  //Synchronizer<Vector3Stamped, Vector3Stamped> sync(sub1, sub2, 10);
  sync.registerCallback(boost::bind(&callback,_1,_2));
  ros::spin();

  return 0;
}
