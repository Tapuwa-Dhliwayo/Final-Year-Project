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
include FunctionTesting/CMakeFiles/unitTests.dir/depend.make

# Include the progress variables for this target.
include FunctionTesting/CMakeFiles/unitTests.dir/progress.make

# Include the compile flags for this target's objects.
include FunctionTesting/CMakeFiles/unitTests.dir/flags.make

FunctionTesting/CMakeFiles/unitTests.dir/unitTests.cpp.o: FunctionTesting/CMakeFiles/unitTests.dir/flags.make
FunctionTesting/CMakeFiles/unitTests.dir/unitTests.cpp.o: /home/pi/moos-ivp/mymoos/src/FunctionTesting/unitTests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/moos-ivp/mymoos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object FunctionTesting/CMakeFiles/unitTests.dir/unitTests.cpp.o"
	cd /home/pi/moos-ivp/mymoos/build/FunctionTesting && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/unitTests.dir/unitTests.cpp.o -c /home/pi/moos-ivp/mymoos/src/FunctionTesting/unitTests.cpp

FunctionTesting/CMakeFiles/unitTests.dir/unitTests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/unitTests.dir/unitTests.cpp.i"
	cd /home/pi/moos-ivp/mymoos/build/FunctionTesting && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/moos-ivp/mymoos/src/FunctionTesting/unitTests.cpp > CMakeFiles/unitTests.dir/unitTests.cpp.i

FunctionTesting/CMakeFiles/unitTests.dir/unitTests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/unitTests.dir/unitTests.cpp.s"
	cd /home/pi/moos-ivp/mymoos/build/FunctionTesting && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/moos-ivp/mymoos/src/FunctionTesting/unitTests.cpp -o CMakeFiles/unitTests.dir/unitTests.cpp.s

FunctionTesting/CMakeFiles/unitTests.dir/unitTests.cpp.o.requires:

.PHONY : FunctionTesting/CMakeFiles/unitTests.dir/unitTests.cpp.o.requires

FunctionTesting/CMakeFiles/unitTests.dir/unitTests.cpp.o.provides: FunctionTesting/CMakeFiles/unitTests.dir/unitTests.cpp.o.requires
	$(MAKE) -f FunctionTesting/CMakeFiles/unitTests.dir/build.make FunctionTesting/CMakeFiles/unitTests.dir/unitTests.cpp.o.provides.build
.PHONY : FunctionTesting/CMakeFiles/unitTests.dir/unitTests.cpp.o.provides

FunctionTesting/CMakeFiles/unitTests.dir/unitTests.cpp.o.provides.build: FunctionTesting/CMakeFiles/unitTests.dir/unitTests.cpp.o


FunctionTesting/CMakeFiles/unitTests.dir/__/IMU/huff.cpp.o: FunctionTesting/CMakeFiles/unitTests.dir/flags.make
FunctionTesting/CMakeFiles/unitTests.dir/__/IMU/huff.cpp.o: /home/pi/moos-ivp/mymoos/src/IMU/huff.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/moos-ivp/mymoos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object FunctionTesting/CMakeFiles/unitTests.dir/__/IMU/huff.cpp.o"
	cd /home/pi/moos-ivp/mymoos/build/FunctionTesting && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/unitTests.dir/__/IMU/huff.cpp.o -c /home/pi/moos-ivp/mymoos/src/IMU/huff.cpp

FunctionTesting/CMakeFiles/unitTests.dir/__/IMU/huff.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/unitTests.dir/__/IMU/huff.cpp.i"
	cd /home/pi/moos-ivp/mymoos/build/FunctionTesting && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/moos-ivp/mymoos/src/IMU/huff.cpp > CMakeFiles/unitTests.dir/__/IMU/huff.cpp.i

FunctionTesting/CMakeFiles/unitTests.dir/__/IMU/huff.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/unitTests.dir/__/IMU/huff.cpp.s"
	cd /home/pi/moos-ivp/mymoos/build/FunctionTesting && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/moos-ivp/mymoos/src/IMU/huff.cpp -o CMakeFiles/unitTests.dir/__/IMU/huff.cpp.s

FunctionTesting/CMakeFiles/unitTests.dir/__/IMU/huff.cpp.o.requires:

.PHONY : FunctionTesting/CMakeFiles/unitTests.dir/__/IMU/huff.cpp.o.requires

FunctionTesting/CMakeFiles/unitTests.dir/__/IMU/huff.cpp.o.provides: FunctionTesting/CMakeFiles/unitTests.dir/__/IMU/huff.cpp.o.requires
	$(MAKE) -f FunctionTesting/CMakeFiles/unitTests.dir/build.make FunctionTesting/CMakeFiles/unitTests.dir/__/IMU/huff.cpp.o.provides.build
.PHONY : FunctionTesting/CMakeFiles/unitTests.dir/__/IMU/huff.cpp.o.provides

FunctionTesting/CMakeFiles/unitTests.dir/__/IMU/huff.cpp.o.provides.build: FunctionTesting/CMakeFiles/unitTests.dir/__/IMU/huff.cpp.o


# Object files for target unitTests
unitTests_OBJECTS = \
"CMakeFiles/unitTests.dir/unitTests.cpp.o" \
"CMakeFiles/unitTests.dir/__/IMU/huff.cpp.o"

# External object files for target unitTests
unitTests_EXTERNAL_OBJECTS =

FunctionTesting/unitTests: FunctionTesting/CMakeFiles/unitTests.dir/unitTests.cpp.o
FunctionTesting/unitTests: FunctionTesting/CMakeFiles/unitTests.dir/__/IMU/huff.cpp.o
FunctionTesting/unitTests: FunctionTesting/CMakeFiles/unitTests.dir/build.make
FunctionTesting/unitTests: /usr/lib/libpigpio.so
FunctionTesting/unitTests: FunctionTesting/CMakeFiles/unitTests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/moos-ivp/mymoos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable unitTests"
	cd /home/pi/moos-ivp/mymoos/build/FunctionTesting && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/unitTests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
FunctionTesting/CMakeFiles/unitTests.dir/build: FunctionTesting/unitTests

.PHONY : FunctionTesting/CMakeFiles/unitTests.dir/build

FunctionTesting/CMakeFiles/unitTests.dir/requires: FunctionTesting/CMakeFiles/unitTests.dir/unitTests.cpp.o.requires
FunctionTesting/CMakeFiles/unitTests.dir/requires: FunctionTesting/CMakeFiles/unitTests.dir/__/IMU/huff.cpp.o.requires

.PHONY : FunctionTesting/CMakeFiles/unitTests.dir/requires

FunctionTesting/CMakeFiles/unitTests.dir/clean:
	cd /home/pi/moos-ivp/mymoos/build/FunctionTesting && $(CMAKE_COMMAND) -P CMakeFiles/unitTests.dir/cmake_clean.cmake
.PHONY : FunctionTesting/CMakeFiles/unitTests.dir/clean

FunctionTesting/CMakeFiles/unitTests.dir/depend:
	cd /home/pi/moos-ivp/mymoos/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/moos-ivp/mymoos/src /home/pi/moos-ivp/mymoos/src/FunctionTesting /home/pi/moos-ivp/mymoos/build /home/pi/moos-ivp/mymoos/build/FunctionTesting /home/pi/moos-ivp/mymoos/build/FunctionTesting/CMakeFiles/unitTests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : FunctionTesting/CMakeFiles/unitTests.dir/depend

