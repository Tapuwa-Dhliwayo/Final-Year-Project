# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_SOURCE_DIR = /home/pi/moos-ivp/mymoos/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/moos-ivp/mymoos/build

# Include any dependencies generated for this target.
include PostApplication/CMakeFiles/PostApp.dir/depend.make

# Include the progress variables for this target.
include PostApplication/CMakeFiles/PostApp.dir/progress.make

# Include the compile flags for this target's objects.
include PostApplication/CMakeFiles/PostApp.dir/flags.make

PostApplication/CMakeFiles/PostApp.dir/PostApp.cpp.o: PostApplication/CMakeFiles/PostApp.dir/flags.make
PostApplication/CMakeFiles/PostApp.dir/PostApp.cpp.o: /home/pi/moos-ivp/mymoos/src/PostApplication/PostApp.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/moos-ivp/mymoos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object PostApplication/CMakeFiles/PostApp.dir/PostApp.cpp.o"
	cd /home/pi/moos-ivp/mymoos/build/PostApplication && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PostApp.dir/PostApp.cpp.o -c /home/pi/moos-ivp/mymoos/src/PostApplication/PostApp.cpp

PostApplication/CMakeFiles/PostApp.dir/PostApp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PostApp.dir/PostApp.cpp.i"
	cd /home/pi/moos-ivp/mymoos/build/PostApplication && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/moos-ivp/mymoos/src/PostApplication/PostApp.cpp > CMakeFiles/PostApp.dir/PostApp.cpp.i

PostApplication/CMakeFiles/PostApp.dir/PostApp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PostApp.dir/PostApp.cpp.s"
	cd /home/pi/moos-ivp/mymoos/build/PostApplication && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/moos-ivp/mymoos/src/PostApplication/PostApp.cpp -o CMakeFiles/PostApp.dir/PostApp.cpp.s

PostApplication/CMakeFiles/PostApp.dir/PostApp.cpp.o.requires:

.PHONY : PostApplication/CMakeFiles/PostApp.dir/PostApp.cpp.o.requires

PostApplication/CMakeFiles/PostApp.dir/PostApp.cpp.o.provides: PostApplication/CMakeFiles/PostApp.dir/PostApp.cpp.o.requires
	$(MAKE) -f PostApplication/CMakeFiles/PostApp.dir/build.make PostApplication/CMakeFiles/PostApp.dir/PostApp.cpp.o.provides.build
.PHONY : PostApplication/CMakeFiles/PostApp.dir/PostApp.cpp.o.provides

PostApplication/CMakeFiles/PostApp.dir/PostApp.cpp.o.provides.build: PostApplication/CMakeFiles/PostApp.dir/PostApp.cpp.o


PostApplication/CMakeFiles/PostApp.dir/__/IMU/IMUSensor.cpp.o: PostApplication/CMakeFiles/PostApp.dir/flags.make
PostApplication/CMakeFiles/PostApp.dir/__/IMU/IMUSensor.cpp.o: /home/pi/moos-ivp/mymoos/src/IMU/IMUSensor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/moos-ivp/mymoos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object PostApplication/CMakeFiles/PostApp.dir/__/IMU/IMUSensor.cpp.o"
	cd /home/pi/moos-ivp/mymoos/build/PostApplication && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PostApp.dir/__/IMU/IMUSensor.cpp.o -c /home/pi/moos-ivp/mymoos/src/IMU/IMUSensor.cpp

PostApplication/CMakeFiles/PostApp.dir/__/IMU/IMUSensor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PostApp.dir/__/IMU/IMUSensor.cpp.i"
	cd /home/pi/moos-ivp/mymoos/build/PostApplication && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/moos-ivp/mymoos/src/IMU/IMUSensor.cpp > CMakeFiles/PostApp.dir/__/IMU/IMUSensor.cpp.i

PostApplication/CMakeFiles/PostApp.dir/__/IMU/IMUSensor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PostApp.dir/__/IMU/IMUSensor.cpp.s"
	cd /home/pi/moos-ivp/mymoos/build/PostApplication && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/moos-ivp/mymoos/src/IMU/IMUSensor.cpp -o CMakeFiles/PostApp.dir/__/IMU/IMUSensor.cpp.s

PostApplication/CMakeFiles/PostApp.dir/__/IMU/IMUSensor.cpp.o.requires:

.PHONY : PostApplication/CMakeFiles/PostApp.dir/__/IMU/IMUSensor.cpp.o.requires

PostApplication/CMakeFiles/PostApp.dir/__/IMU/IMUSensor.cpp.o.provides: PostApplication/CMakeFiles/PostApp.dir/__/IMU/IMUSensor.cpp.o.requires
	$(MAKE) -f PostApplication/CMakeFiles/PostApp.dir/build.make PostApplication/CMakeFiles/PostApp.dir/__/IMU/IMUSensor.cpp.o.provides.build
.PHONY : PostApplication/CMakeFiles/PostApp.dir/__/IMU/IMUSensor.cpp.o.provides

PostApplication/CMakeFiles/PostApp.dir/__/IMU/IMUSensor.cpp.o.provides.build: PostApplication/CMakeFiles/PostApp.dir/__/IMU/IMUSensor.cpp.o


PostApplication/CMakeFiles/PostApp.dir/__/IMU/huff.cpp.o: PostApplication/CMakeFiles/PostApp.dir/flags.make
PostApplication/CMakeFiles/PostApp.dir/__/IMU/huff.cpp.o: /home/pi/moos-ivp/mymoos/src/IMU/huff.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/moos-ivp/mymoos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object PostApplication/CMakeFiles/PostApp.dir/__/IMU/huff.cpp.o"
	cd /home/pi/moos-ivp/mymoos/build/PostApplication && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PostApp.dir/__/IMU/huff.cpp.o -c /home/pi/moos-ivp/mymoos/src/IMU/huff.cpp

PostApplication/CMakeFiles/PostApp.dir/__/IMU/huff.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PostApp.dir/__/IMU/huff.cpp.i"
	cd /home/pi/moos-ivp/mymoos/build/PostApplication && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/moos-ivp/mymoos/src/IMU/huff.cpp > CMakeFiles/PostApp.dir/__/IMU/huff.cpp.i

PostApplication/CMakeFiles/PostApp.dir/__/IMU/huff.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PostApp.dir/__/IMU/huff.cpp.s"
	cd /home/pi/moos-ivp/mymoos/build/PostApplication && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/moos-ivp/mymoos/src/IMU/huff.cpp -o CMakeFiles/PostApp.dir/__/IMU/huff.cpp.s

PostApplication/CMakeFiles/PostApp.dir/__/IMU/huff.cpp.o.requires:

.PHONY : PostApplication/CMakeFiles/PostApp.dir/__/IMU/huff.cpp.o.requires

PostApplication/CMakeFiles/PostApp.dir/__/IMU/huff.cpp.o.provides: PostApplication/CMakeFiles/PostApp.dir/__/IMU/huff.cpp.o.requires
	$(MAKE) -f PostApplication/CMakeFiles/PostApp.dir/build.make PostApplication/CMakeFiles/PostApp.dir/__/IMU/huff.cpp.o.provides.build
.PHONY : PostApplication/CMakeFiles/PostApp.dir/__/IMU/huff.cpp.o.provides

PostApplication/CMakeFiles/PostApp.dir/__/IMU/huff.cpp.o.provides.build: PostApplication/CMakeFiles/PostApp.dir/__/IMU/huff.cpp.o


PostApplication/CMakeFiles/PostApp.dir/__/IMU/clogger.cpp.o: PostApplication/CMakeFiles/PostApp.dir/flags.make
PostApplication/CMakeFiles/PostApp.dir/__/IMU/clogger.cpp.o: /home/pi/moos-ivp/mymoos/src/IMU/clogger.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/moos-ivp/mymoos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object PostApplication/CMakeFiles/PostApp.dir/__/IMU/clogger.cpp.o"
	cd /home/pi/moos-ivp/mymoos/build/PostApplication && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PostApp.dir/__/IMU/clogger.cpp.o -c /home/pi/moos-ivp/mymoos/src/IMU/clogger.cpp

PostApplication/CMakeFiles/PostApp.dir/__/IMU/clogger.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PostApp.dir/__/IMU/clogger.cpp.i"
	cd /home/pi/moos-ivp/mymoos/build/PostApplication && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/moos-ivp/mymoos/src/IMU/clogger.cpp > CMakeFiles/PostApp.dir/__/IMU/clogger.cpp.i

PostApplication/CMakeFiles/PostApp.dir/__/IMU/clogger.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PostApp.dir/__/IMU/clogger.cpp.s"
	cd /home/pi/moos-ivp/mymoos/build/PostApplication && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/moos-ivp/mymoos/src/IMU/clogger.cpp -o CMakeFiles/PostApp.dir/__/IMU/clogger.cpp.s

PostApplication/CMakeFiles/PostApp.dir/__/IMU/clogger.cpp.o.requires:

.PHONY : PostApplication/CMakeFiles/PostApp.dir/__/IMU/clogger.cpp.o.requires

PostApplication/CMakeFiles/PostApp.dir/__/IMU/clogger.cpp.o.provides: PostApplication/CMakeFiles/PostApp.dir/__/IMU/clogger.cpp.o.requires
	$(MAKE) -f PostApplication/CMakeFiles/PostApp.dir/build.make PostApplication/CMakeFiles/PostApp.dir/__/IMU/clogger.cpp.o.provides.build
.PHONY : PostApplication/CMakeFiles/PostApp.dir/__/IMU/clogger.cpp.o.provides

PostApplication/CMakeFiles/PostApp.dir/__/IMU/clogger.cpp.o.provides.build: PostApplication/CMakeFiles/PostApp.dir/__/IMU/clogger.cpp.o


# Object files for target PostApp
PostApp_OBJECTS = \
"CMakeFiles/PostApp.dir/PostApp.cpp.o" \
"CMakeFiles/PostApp.dir/__/IMU/IMUSensor.cpp.o" \
"CMakeFiles/PostApp.dir/__/IMU/huff.cpp.o" \
"CMakeFiles/PostApp.dir/__/IMU/clogger.cpp.o"

# External object files for target PostApp
PostApp_EXTERNAL_OBJECTS =

PostApplication/PostApp: PostApplication/CMakeFiles/PostApp.dir/PostApp.cpp.o
PostApplication/PostApp: PostApplication/CMakeFiles/PostApp.dir/__/IMU/IMUSensor.cpp.o
PostApplication/PostApp: PostApplication/CMakeFiles/PostApp.dir/__/IMU/huff.cpp.o
PostApplication/PostApp: PostApplication/CMakeFiles/PostApp.dir/__/IMU/clogger.cpp.o
PostApplication/PostApp: PostApplication/CMakeFiles/PostApp.dir/build.make
PostApplication/PostApp: /usr/local/lib/libMOOS.a
PostApplication/PostApp: /usr/lib/libpigpio.so
PostApplication/PostApp: PostApplication/CMakeFiles/PostApp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/moos-ivp/mymoos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable PostApp"
	cd /home/pi/moos-ivp/mymoos/build/PostApplication && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/PostApp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
PostApplication/CMakeFiles/PostApp.dir/build: PostApplication/PostApp

.PHONY : PostApplication/CMakeFiles/PostApp.dir/build

PostApplication/CMakeFiles/PostApp.dir/requires: PostApplication/CMakeFiles/PostApp.dir/PostApp.cpp.o.requires
PostApplication/CMakeFiles/PostApp.dir/requires: PostApplication/CMakeFiles/PostApp.dir/__/IMU/IMUSensor.cpp.o.requires
PostApplication/CMakeFiles/PostApp.dir/requires: PostApplication/CMakeFiles/PostApp.dir/__/IMU/huff.cpp.o.requires
PostApplication/CMakeFiles/PostApp.dir/requires: PostApplication/CMakeFiles/PostApp.dir/__/IMU/clogger.cpp.o.requires

.PHONY : PostApplication/CMakeFiles/PostApp.dir/requires

PostApplication/CMakeFiles/PostApp.dir/clean:
	cd /home/pi/moos-ivp/mymoos/build/PostApplication && $(CMAKE_COMMAND) -P CMakeFiles/PostApp.dir/cmake_clean.cmake
.PHONY : PostApplication/CMakeFiles/PostApp.dir/clean

PostApplication/CMakeFiles/PostApp.dir/depend:
	cd /home/pi/moos-ivp/mymoos/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/moos-ivp/mymoos/src /home/pi/moos-ivp/mymoos/src/PostApplication /home/pi/moos-ivp/mymoos/build /home/pi/moos-ivp/mymoos/build/PostApplication /home/pi/moos-ivp/mymoos/build/PostApplication/CMakeFiles/PostApp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : PostApplication/CMakeFiles/PostApp.dir/depend

