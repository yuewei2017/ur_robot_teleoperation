# What version of CMake is needed?
cmake_minimum_required(VERSION 2.8.3)

# The name of this package.
project(omega_telemanipulation)

# Find the catkin build system, and any other packages on which we depend.
find_package(catkin REQUIRED COMPONENTS roscpp visualization_msgs message_filters)
# Declare our catkin package.
catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES binpicking
  CATKIN_DEPENDS geometry_msgs message_runtime message_filters)

include(CheckCXXCompilerFlag)
CHECK_CXX_COMPILER_FLAG("-std=c++11" COMPILER_SUPPORTS_CXX11)
CHECK_CXX_COMPILER_FLAG("-std=c++0x" COMPILER_SUPPORTS_CXX0X)
if(COMPILER_SUPPORTS_CXX11)
    set(CMAKE_CXX_FLAGS "-std=c++11")
elseif(COMPILER_SUPPORTS_CXX0X)
    set(CMAKE_CXX_FLAGS "-std=c++0x")
else()
    message(FATAL_ERROR "The compiler ${CMAKE_CXX_COMPILER} has no C++11 support. Please use a different C++ compiler. Suggested solution: update the pkg build-essential ")
endif()

# Specify locations of header files.
include_directories(include ${catkin_INCLUDE_DIRS})

add_executable(marker_array_telemanipulation_exe src/macs_telemanipulation.cpp)
target_link_libraries(marker_array_telemanipulation_exe ${catkin_LIBRARIES})

add_executable(collision_engine_omega_telemanipulation_exe src/collision_engine_omega_telemanipulation.cpp)
target_link_libraries(collision_engine_omega_telemanipulation_exe ${catkin_LIBRARIES})

link_directories(/home/dong/Project/master/src/ROS_omega_telemanipulation-master/omega_telemanipulation/libraries) 
add_executable(omega_engine_telemanipulation_exe src/omega_engine_telemanipulation.cpp)
target_link_libraries(omega_engine_telemanipulation_exe dhd usb-1.0)
target_link_libraries(omega_engine_telemanipulation_exe ${catkin_LIBRARIES})

add_executable(haptic_ros_driver src/haptic_ros_driver.cpp src/HapticDevice.cpp)
target_link_libraries(haptic_ros_driver dhd usb-1.0)
target_link_libraries(haptic_ros_driver ${catkin_LIBRARIES})

add_executable(world_pose src/world_pose.cpp)
target_link_libraries(world_pose ${catkin_LIBRARIES})
add_executable(message_filter_pose src/message_filter.cpp)
target_link_libraries(message_filter_pose ${catkin_LIBRARIES})
