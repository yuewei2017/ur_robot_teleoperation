# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.2

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/dong/Project/robot_test/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dong/Project/robot_test/build

# Include any dependencies generated for this target.
include ros_controllers/joint_trajectory_controller/CMakeFiles/joint_trajectory_segment_test.dir/depend.make

# Include the progress variables for this target.
include ros_controllers/joint_trajectory_controller/CMakeFiles/joint_trajectory_segment_test.dir/progress.make

# Include the compile flags for this target's objects.
include ros_controllers/joint_trajectory_controller/CMakeFiles/joint_trajectory_segment_test.dir/flags.make

ros_controllers/joint_trajectory_controller/CMakeFiles/joint_trajectory_segment_test.dir/test/joint_trajectory_segment_test.cpp.o: ros_controllers/joint_trajectory_controller/CMakeFiles/joint_trajectory_segment_test.dir/flags.make
ros_controllers/joint_trajectory_controller/CMakeFiles/joint_trajectory_segment_test.dir/test/joint_trajectory_segment_test.cpp.o: /home/dong/Project/robot_test/src/ros_controllers/joint_trajectory_controller/test/joint_trajectory_segment_test.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dong/Project/robot_test/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object ros_controllers/joint_trajectory_controller/CMakeFiles/joint_trajectory_segment_test.dir/test/joint_trajectory_segment_test.cpp.o"
	cd /home/dong/Project/robot_test/build/ros_controllers/joint_trajectory_controller && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/joint_trajectory_segment_test.dir/test/joint_trajectory_segment_test.cpp.o -c /home/dong/Project/robot_test/src/ros_controllers/joint_trajectory_controller/test/joint_trajectory_segment_test.cpp

ros_controllers/joint_trajectory_controller/CMakeFiles/joint_trajectory_segment_test.dir/test/joint_trajectory_segment_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/joint_trajectory_segment_test.dir/test/joint_trajectory_segment_test.cpp.i"
	cd /home/dong/Project/robot_test/build/ros_controllers/joint_trajectory_controller && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/dong/Project/robot_test/src/ros_controllers/joint_trajectory_controller/test/joint_trajectory_segment_test.cpp > CMakeFiles/joint_trajectory_segment_test.dir/test/joint_trajectory_segment_test.cpp.i

ros_controllers/joint_trajectory_controller/CMakeFiles/joint_trajectory_segment_test.dir/test/joint_trajectory_segment_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/joint_trajectory_segment_test.dir/test/joint_trajectory_segment_test.cpp.s"
	cd /home/dong/Project/robot_test/build/ros_controllers/joint_trajectory_controller && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/dong/Project/robot_test/src/ros_controllers/joint_trajectory_controller/test/joint_trajectory_segment_test.cpp -o CMakeFiles/joint_trajectory_segment_test.dir/test/joint_trajectory_segment_test.cpp.s

ros_controllers/joint_trajectory_controller/CMakeFiles/joint_trajectory_segment_test.dir/test/joint_trajectory_segment_test.cpp.o.requires:
.PHONY : ros_controllers/joint_trajectory_controller/CMakeFiles/joint_trajectory_segment_test.dir/test/joint_trajectory_segment_test.cpp.o.requires

ros_controllers/joint_trajectory_controller/CMakeFiles/joint_trajectory_segment_test.dir/test/joint_trajectory_segment_test.cpp.o.provides: ros_controllers/joint_trajectory_controller/CMakeFiles/joint_trajectory_segment_test.dir/test/joint_trajectory_segment_test.cpp.o.requires
	$(MAKE) -f ros_controllers/joint_trajectory_controller/CMakeFiles/joint_trajectory_segment_test.dir/build.make ros_controllers/joint_trajectory_controller/CMakeFiles/joint_trajectory_segment_test.dir/test/joint_trajectory_segment_test.cpp.o.provides.build
.PHONY : ros_controllers/joint_trajectory_controller/CMakeFiles/joint_trajectory_segment_test.dir/test/joint_trajectory_segment_test.cpp.o.provides

ros_controllers/joint_trajectory_controller/CMakeFiles/joint_trajectory_segment_test.dir/test/joint_trajectory_segment_test.cpp.o.provides.build: ros_controllers/joint_trajectory_controller/CMakeFiles/joint_trajectory_segment_test.dir/test/joint_trajectory_segment_test.cpp.o

# Object files for target joint_trajectory_segment_test
joint_trajectory_segment_test_OBJECTS = \
"CMakeFiles/joint_trajectory_segment_test.dir/test/joint_trajectory_segment_test.cpp.o"

# External object files for target joint_trajectory_segment_test
joint_trajectory_segment_test_EXTERNAL_OBJECTS =

/home/dong/Project/robot_test/devel/lib/joint_trajectory_controller/joint_trajectory_segment_test: ros_controllers/joint_trajectory_controller/CMakeFiles/joint_trajectory_segment_test.dir/test/joint_trajectory_segment_test.cpp.o
/home/dong/Project/robot_test/devel/lib/joint_trajectory_controller/joint_trajectory_segment_test: ros_controllers/joint_trajectory_controller/CMakeFiles/joint_trajectory_segment_test.dir/build.make
/home/dong/Project/robot_test/devel/lib/joint_trajectory_controller/joint_trajectory_segment_test: gtest/libgtest.so
/home/dong/Project/robot_test/devel/lib/joint_trajectory_controller/joint_trajectory_segment_test: /opt/ros/indigo/lib/libactionlib.so
/home/dong/Project/robot_test/devel/lib/joint_trajectory_controller/joint_trajectory_segment_test: /opt/ros/indigo/lib/liburdf.so
/home/dong/Project/robot_test/devel/lib/joint_trajectory_controller/joint_trajectory_segment_test: /usr/lib/x86_64-linux-gnu/liburdfdom_sensor.so
/home/dong/Project/robot_test/devel/lib/joint_trajectory_controller/joint_trajectory_segment_test: /usr/lib/x86_64-linux-gnu/liburdfdom_model_state.so
/home/dong/Project/robot_test/devel/lib/joint_trajectory_controller/joint_trajectory_segment_test: /usr/lib/x86_64-linux-gnu/liburdfdom_model.so
/home/dong/Project/robot_test/devel/lib/joint_trajectory_controller/joint_trajectory_segment_test: /usr/lib/x86_64-linux-gnu/liburdfdom_world.so
/home/dong/Project/robot_test/devel/lib/joint_trajectory_controller/joint_trajectory_segment_test: /opt/ros/indigo/lib/librosconsole_bridge.so
/home/dong/Project/robot_test/devel/lib/joint_trajectory_controller/joint_trajectory_segment_test: /opt/ros/indigo/lib/libcontrol_toolbox.so
/home/dong/Project/robot_test/devel/lib/joint_trajectory_controller/joint_trajectory_segment_test: /opt/ros/indigo/lib/libdynamic_reconfigure_config_init_mutex.so
/home/dong/Project/robot_test/devel/lib/joint_trajectory_controller/joint_trajectory_segment_test: /opt/ros/indigo/lib/libcontroller_manager.so
/home/dong/Project/robot_test/devel/lib/joint_trajectory_controller/joint_trajectory_segment_test: /opt/ros/indigo/lib/librealtime_tools.so
/home/dong/Project/robot_test/devel/lib/joint_trajectory_controller/joint_trajectory_segment_test: /opt/ros/indigo/lib/libroscpp.so
/home/dong/Project/robot_test/devel/lib/joint_trajectory_controller/joint_trajectory_segment_test: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/dong/Project/robot_test/devel/lib/joint_trajectory_controller/joint_trajectory_segment_test: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/dong/Project/robot_test/devel/lib/joint_trajectory_controller/joint_trajectory_segment_test: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/dong/Project/robot_test/devel/lib/joint_trajectory_controller/joint_trajectory_segment_test: /opt/ros/indigo/lib/libclass_loader.so
/home/dong/Project/robot_test/devel/lib/joint_trajectory_controller/joint_trajectory_segment_test: /usr/lib/libPocoFoundation.so
/home/dong/Project/robot_test/devel/lib/joint_trajectory_controller/joint_trajectory_segment_test: /usr/lib/x86_64-linux-gnu/libdl.so
/home/dong/Project/robot_test/devel/lib/joint_trajectory_controller/joint_trajectory_segment_test: /opt/ros/indigo/lib/librosconsole.so
/home/dong/Project/robot_test/devel/lib/joint_trajectory_controller/joint_trajectory_segment_test: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/dong/Project/robot_test/devel/lib/joint_trajectory_controller/joint_trajectory_segment_test: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/dong/Project/robot_test/devel/lib/joint_trajectory_controller/joint_trajectory_segment_test: /usr/lib/liblog4cxx.so
/home/dong/Project/robot_test/devel/lib/joint_trajectory_controller/joint_trajectory_segment_test: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/dong/Project/robot_test/devel/lib/joint_trajectory_controller/joint_trajectory_segment_test: /opt/ros/indigo/lib/librostime.so
/home/dong/Project/robot_test/devel/lib/joint_trajectory_controller/joint_trajectory_segment_test: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/dong/Project/robot_test/devel/lib/joint_trajectory_controller/joint_trajectory_segment_test: /opt/ros/indigo/lib/libcpp_common.so
/home/dong/Project/robot_test/devel/lib/joint_trajectory_controller/joint_trajectory_segment_test: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/dong/Project/robot_test/devel/lib/joint_trajectory_controller/joint_trajectory_segment_test: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/dong/Project/robot_test/devel/lib/joint_trajectory_controller/joint_trajectory_segment_test: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/dong/Project/robot_test/devel/lib/joint_trajectory_controller/joint_trajectory_segment_test: /opt/ros/indigo/lib/libroslib.so
/home/dong/Project/robot_test/devel/lib/joint_trajectory_controller/joint_trajectory_segment_test: /opt/ros/indigo/lib/librospack.so
/home/dong/Project/robot_test/devel/lib/joint_trajectory_controller/joint_trajectory_segment_test: /usr/lib/x86_64-linux-gnu/libpython2.7.so
/home/dong/Project/robot_test/devel/lib/joint_trajectory_controller/joint_trajectory_segment_test: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/dong/Project/robot_test/devel/lib/joint_trajectory_controller/joint_trajectory_segment_test: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/dong/Project/robot_test/devel/lib/joint_trajectory_controller/joint_trajectory_segment_test: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/dong/Project/robot_test/devel/lib/joint_trajectory_controller/joint_trajectory_segment_test: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/dong/Project/robot_test/devel/lib/joint_trajectory_controller/joint_trajectory_segment_test: ros_controllers/joint_trajectory_controller/CMakeFiles/joint_trajectory_segment_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/dong/Project/robot_test/devel/lib/joint_trajectory_controller/joint_trajectory_segment_test"
	cd /home/dong/Project/robot_test/build/ros_controllers/joint_trajectory_controller && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/joint_trajectory_segment_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ros_controllers/joint_trajectory_controller/CMakeFiles/joint_trajectory_segment_test.dir/build: /home/dong/Project/robot_test/devel/lib/joint_trajectory_controller/joint_trajectory_segment_test
.PHONY : ros_controllers/joint_trajectory_controller/CMakeFiles/joint_trajectory_segment_test.dir/build

ros_controllers/joint_trajectory_controller/CMakeFiles/joint_trajectory_segment_test.dir/requires: ros_controllers/joint_trajectory_controller/CMakeFiles/joint_trajectory_segment_test.dir/test/joint_trajectory_segment_test.cpp.o.requires
.PHONY : ros_controllers/joint_trajectory_controller/CMakeFiles/joint_trajectory_segment_test.dir/requires

ros_controllers/joint_trajectory_controller/CMakeFiles/joint_trajectory_segment_test.dir/clean:
	cd /home/dong/Project/robot_test/build/ros_controllers/joint_trajectory_controller && $(CMAKE_COMMAND) -P CMakeFiles/joint_trajectory_segment_test.dir/cmake_clean.cmake
.PHONY : ros_controllers/joint_trajectory_controller/CMakeFiles/joint_trajectory_segment_test.dir/clean

ros_controllers/joint_trajectory_controller/CMakeFiles/joint_trajectory_segment_test.dir/depend:
	cd /home/dong/Project/robot_test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dong/Project/robot_test/src /home/dong/Project/robot_test/src/ros_controllers/joint_trajectory_controller /home/dong/Project/robot_test/build /home/dong/Project/robot_test/build/ros_controllers/joint_trajectory_controller /home/dong/Project/robot_test/build/ros_controllers/joint_trajectory_controller/CMakeFiles/joint_trajectory_segment_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ros_controllers/joint_trajectory_controller/CMakeFiles/joint_trajectory_segment_test.dir/depend
