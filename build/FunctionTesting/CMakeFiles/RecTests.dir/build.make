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
include FunctionTesting/CMakeFiles/RecTests.dir/depend.make

# Include the progress variables for this target.
include FunctionTesting/CMakeFiles/RecTests.dir/progress.make

# Include the compile flags for this target's objects.
include FunctionTesting/CMakeFiles/RecTests.dir/flags.make

FunctionTesting/CMakeFiles/RecTests.dir/testRecApp.cpp.o: FunctionTesting/CMakeFiles/RecTests.dir/flags.make
FunctionTesting/CMakeFiles/RecTests.dir/testRecApp.cpp.o: /home/pi/moos-ivp/mymoos/src/FunctionTesting/testRecApp.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/moos-ivp/mymoos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object FunctionTesting/CMakeFiles/RecTests.dir/testRecApp.cpp.o"
	cd /home/pi/moos-ivp/mymoos/build/FunctionTesting && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/RecTests.dir/testRecApp.cpp.o -c /home/pi/moos-ivp/mymoos/src/FunctionTesting/testRecApp.cpp

FunctionTesting/CMakeFiles/RecTests.dir/testRecApp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RecTests.dir/testRecApp.cpp.i"
	cd /home/pi/moos-ivp/mymoos/build/FunctionTesting && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/moos-ivp/mymoos/src/FunctionTesting/testRecApp.cpp > CMakeFiles/RecTests.dir/testRecApp.cpp.i

FunctionTesting/CMakeFiles/RecTests.dir/testRecApp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RecTests.dir/testRecApp.cpp.s"
	cd /home/pi/moos-ivp/mymoos/build/FunctionTesting && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/moos-ivp/mymoos/src/FunctionTesting/testRecApp.cpp -o CMakeFiles/RecTests.dir/testRecApp.cpp.s

FunctionTesting/CMakeFiles/RecTests.dir/testRecApp.cpp.o.requires:

.PHONY : FunctionTesting/CMakeFiles/RecTests.dir/testRecApp.cpp.o.requires

FunctionTesting/CMakeFiles/RecTests.dir/testRecApp.cpp.o.provides: FunctionTesting/CMakeFiles/RecTests.dir/testRecApp.cpp.o.requires
	$(MAKE) -f FunctionTesting/CMakeFiles/RecTests.dir/build.make FunctionTesting/CMakeFiles/RecTests.dir/testRecApp.cpp.o.provides.build
.PHONY : FunctionTesting/CMakeFiles/RecTests.dir/testRecApp.cpp.o.provides

FunctionTesting/CMakeFiles/RecTests.dir/testRecApp.cpp.o.provides.build: FunctionTesting/CMakeFiles/RecTests.dir/testRecApp.cpp.o


FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/IMUSensor.cpp.o: FunctionTesting/CMakeFiles/RecTests.dir/flags.make
FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/IMUSensor.cpp.o: /home/pi/moos-ivp/mymoos/src/IMU/IMUSensor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/moos-ivp/mymoos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/IMUSensor.cpp.o"
	cd /home/pi/moos-ivp/mymoos/build/FunctionTesting && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/RecTests.dir/__/IMU/IMUSensor.cpp.o -c /home/pi/moos-ivp/mymoos/src/IMU/IMUSensor.cpp

FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/IMUSensor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RecTests.dir/__/IMU/IMUSensor.cpp.i"
	cd /home/pi/moos-ivp/mymoos/build/FunctionTesting && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/moos-ivp/mymoos/src/IMU/IMUSensor.cpp > CMakeFiles/RecTests.dir/__/IMU/IMUSensor.cpp.i

FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/IMUSensor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RecTests.dir/__/IMU/IMUSensor.cpp.s"
	cd /home/pi/moos-ivp/mymoos/build/FunctionTesting && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/moos-ivp/mymoos/src/IMU/IMUSensor.cpp -o CMakeFiles/RecTests.dir/__/IMU/IMUSensor.cpp.s

FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/IMUSensor.cpp.o.requires:

.PHONY : FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/IMUSensor.cpp.o.requires

FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/IMUSensor.cpp.o.provides: FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/IMUSensor.cpp.o.requires
	$(MAKE) -f FunctionTesting/CMakeFiles/RecTests.dir/build.make FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/IMUSensor.cpp.o.provides.build
.PHONY : FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/IMUSensor.cpp.o.provides

FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/IMUSensor.cpp.o.provides.build: FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/IMUSensor.cpp.o


FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/huff.cpp.o: FunctionTesting/CMakeFiles/RecTests.dir/flags.make
FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/huff.cpp.o: /home/pi/moos-ivp/mymoos/src/IMU/huff.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/moos-ivp/mymoos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/huff.cpp.o"
	cd /home/pi/moos-ivp/mymoos/build/FunctionTesting && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/RecTests.dir/__/IMU/huff.cpp.o -c /home/pi/moos-ivp/mymoos/src/IMU/huff.cpp

FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/huff.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RecTests.dir/__/IMU/huff.cpp.i"
	cd /home/pi/moos-ivp/mymoos/build/FunctionTesting && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/moos-ivp/mymoos/src/IMU/huff.cpp > CMakeFiles/RecTests.dir/__/IMU/huff.cpp.i

FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/huff.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RecTests.dir/__/IMU/huff.cpp.s"
	cd /home/pi/moos-ivp/mymoos/build/FunctionTesting && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/moos-ivp/mymoos/src/IMU/huff.cpp -o CMakeFiles/RecTests.dir/__/IMU/huff.cpp.s

FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/huff.cpp.o.requires:

.PHONY : FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/huff.cpp.o.requires

FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/huff.cpp.o.provides: FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/huff.cpp.o.requires
	$(MAKE) -f FunctionTesting/CMakeFiles/RecTests.dir/build.make FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/huff.cpp.o.provides.build
.PHONY : FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/huff.cpp.o.provides

FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/huff.cpp.o.provides.build: FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/huff.cpp.o


FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/clogger.cpp.o: FunctionTesting/CMakeFiles/RecTests.dir/flags.make
FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/clogger.cpp.o: /home/pi/moos-ivp/mymoos/src/IMU/clogger.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/moos-ivp/mymoos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/clogger.cpp.o"
	cd /home/pi/moos-ivp/mymoos/build/FunctionTesting && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/RecTests.dir/__/IMU/clogger.cpp.o -c /home/pi/moos-ivp/mymoos/src/IMU/clogger.cpp

FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/clogger.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RecTests.dir/__/IMU/clogger.cpp.i"
	cd /home/pi/moos-ivp/mymoos/build/FunctionTesting && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/moos-ivp/mymoos/src/IMU/clogger.cpp > CMakeFiles/RecTests.dir/__/IMU/clogger.cpp.i

FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/clogger.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RecTests.dir/__/IMU/clogger.cpp.s"
	cd /home/pi/moos-ivp/mymoos/build/FunctionTesting && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/moos-ivp/mymoos/src/IMU/clogger.cpp -o CMakeFiles/RecTests.dir/__/IMU/clogger.cpp.s

FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/clogger.cpp.o.requires:

.PHONY : FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/clogger.cpp.o.requires

FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/clogger.cpp.o.provides: FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/clogger.cpp.o.requires
	$(MAKE) -f FunctionTesting/CMakeFiles/RecTests.dir/build.make FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/clogger.cpp.o.provides.build
.PHONY : FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/clogger.cpp.o.provides

FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/clogger.cpp.o.provides.build: FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/clogger.cpp.o


# Object files for target RecTests
RecTests_OBJECTS = \
"CMakeFiles/RecTests.dir/testRecApp.cpp.o" \
"CMakeFiles/RecTests.dir/__/IMU/IMUSensor.cpp.o" \
"CMakeFiles/RecTests.dir/__/IMU/huff.cpp.o" \
"CMakeFiles/RecTests.dir/__/IMU/clogger.cpp.o"

# External object files for target RecTests
RecTests_EXTERNAL_OBJECTS =

FunctionTesting/RecTests: FunctionTesting/CMakeFiles/RecTests.dir/testRecApp.cpp.o
FunctionTesting/RecTests: FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/IMUSensor.cpp.o
FunctionTesting/RecTests: FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/huff.cpp.o
FunctionTesting/RecTests: FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/clogger.cpp.o
FunctionTesting/RecTests: FunctionTesting/CMakeFiles/RecTests.dir/build.make
FunctionTesting/RecTests: /usr/local/lib/libMOOS.a
FunctionTesting/RecTests: /usr/lib/libpigpio.so
FunctionTesting/RecTests: FunctionTesting/CMakeFiles/RecTests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/moos-ivp/mymoos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable RecTests"
	cd /home/pi/moos-ivp/mymoos/build/FunctionTesting && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/RecTests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
FunctionTesting/CMakeFiles/RecTests.dir/build: FunctionTesting/RecTests

.PHONY : FunctionTesting/CMakeFiles/RecTests.dir/build

FunctionTesting/CMakeFiles/RecTests.dir/requires: FunctionTesting/CMakeFiles/RecTests.dir/testRecApp.cpp.o.requires
FunctionTesting/CMakeFiles/RecTests.dir/requires: FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/IMUSensor.cpp.o.requires
FunctionTesting/CMakeFiles/RecTests.dir/requires: FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/huff.cpp.o.requires
FunctionTesting/CMakeFiles/RecTests.dir/requires: FunctionTesting/CMakeFiles/RecTests.dir/__/IMU/clogger.cpp.o.requires

.PHONY : FunctionTesting/CMakeFiles/RecTests.dir/requires

FunctionTesting/CMakeFiles/RecTests.dir/clean:
	cd /home/pi/moos-ivp/mymoos/build/FunctionTesting && $(CMAKE_COMMAND) -P CMakeFiles/RecTests.dir/cmake_clean.cmake
.PHONY : FunctionTesting/CMakeFiles/RecTests.dir/clean

FunctionTesting/CMakeFiles/RecTests.dir/depend:
	cd /home/pi/moos-ivp/mymoos/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/moos-ivp/mymoos/src /home/pi/moos-ivp/mymoos/src/FunctionTesting /home/pi/moos-ivp/mymoos/build /home/pi/moos-ivp/mymoos/build/FunctionTesting /home/pi/moos-ivp/mymoos/build/FunctionTesting/CMakeFiles/RecTests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : FunctionTesting/CMakeFiles/RecTests.dir/depend

