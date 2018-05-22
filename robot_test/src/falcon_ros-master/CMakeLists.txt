cmake_minimum_required(VERSION 3.0.0)
project(falcon_ros)

set(CMAKE_CXX_FLAGS "-std=c++11 ${CMAKE_CXX_FLAGS}")
#set(CMAKE_MODULE_PATH "${CMAKE_MODULE_PATH} ${PROJECT_SOURCE_DIR}/external/chai3d-3.2.0/build")

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
        geometry_msgs
        roscpp
        rospy
        std_msgs
        )

add_subdirectory (${PROJECT_SOURCE_DIR}/external/chai3d-3.2.0)

## System dependencies are found with CMake's conventions
find_package(CHAI3D REQUIRED)

# Bad trick to let linker link with drd
set (DHD_LIBRARY_DIRS ${PROJECT_SOURCE_DIR}/external/chai3d-3.2.0/external/DHD/lib/lin-x86_64/)
link_directories (${DHD_LIBRARY_DIRS})

## Uncomment this if the package has a setup.py. This macro ensures
## modules and global scripts declared therein get installed
## See http://ros.org/doc/api/catkin/html/user_guide/setup_dot_py.html
# catkin_python_setup()

################################################
## Declare ROS messages, services and actions ##
################################################

################################################
## Declare ROS dynamic reconfigure parameters ##
################################################

###################################
## catkin specific configuration ##
###################################
## The catkin_package macro generates cmake config files for your package
## Declare things to be passed to dependent projects
## INCLUDE_DIRS: uncomment this if you package contains header files
## LIBRARIES: libraries you create in this project that dependent projects also need
## CATKIN_DEPENDS: catkin_packages dependent projects also need
## DEPENDS: system dependencies of this project that dependent projects also need
catkin_package(
        INCLUDE_DIRS include
        #  LIBRARIES falcon_ros
        CATKIN_DEPENDS geometry_msgs roscpp rospy std_msgs
        #  DEPENDS system_lib
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
# include_directories(include)
include_directories(
        ${catkin_INCLUDE_DIRS}
        ${CHAI3D_INCLUDE_DIRS}
        ${CHAI3D_SOURCE_DIR}
        include
)

set(SOURCES
        ##src/falcon_ros_node.cpp
        ##src/FalconRosDriver.cpp
	##src/force_back.cpp
        ##include/falcon_ros/FalconRosDriver.h
        src/omega_ros_node.cpp
        src/OmegaRosDriver.cpp
        include/omega7_ros/OmegaRosDriver.h
        )

## Declare a C++ executable
##add_executable(falcon_ros_node ${SOURCES})
##add_executable(force_back ${SOURCES})
add_executable(omega_ros_node ${SOURCES})


## Specify libraries to link a library or executable target against
##target_link_libraries(falcon_ros_node
##        ${catkin_LIBRARIES}
##        )
target_link_libraries(omega_ros_node
        ${catkin_LIBRARIES}
        )

##target_link_libraries(falcon_ros_node ${CHAI3D_LIBRARIES})
target_link_libraries(omega_ros_node ${CHAI3D_LIBRARIES})
##target_link_libraries(force_back ${CHAI3D_LIBRARIES})

#############
## Install ##
#############

#############
## Testing ##
#############

