# chai3d_falcon_ros
Simple ROS Indigo node to retrieve position and velocity from the Novint Falcon haptics device and to render force to it.

The package was tested with chai3d-3.2.0. To use the package, download the CMAKE version of the chai3d SDK from the official cha3d website, <http://chai3d.org/download/releases>, extract it and place the folder inside the **external** directory. 

Additionally, follow the chai3d documentation to find out which packages need to be installed to build the SDK and how to set the user privileges to run chai3d for the Falcon device without root priveleges.

After this steps, the ROS node should compile using catkin\_make.

### Important
Node is not using the haptic thread from chai3d, because it caused segmentation faults. Instead a boost thread is used.
