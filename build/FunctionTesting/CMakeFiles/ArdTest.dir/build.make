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
include FunctionTesting/CMakeFiles/ArdTest.dir/depend.make

# Include the progress variables for this target.
include FunctionTesting/CMakeFiles/ArdTest.dir/progress.make

# Include the compile flags for this target's objects.
include FunctionTesting/CMakeFiles/ArdTest.dir/flags.make

FunctionTesting/CMakeFiles/ArdTest.dir/ArdTest.cpp.o: FunctionTesting/CMakeFiles/ArdTest.dir/flags.make
FunctionTesting/CMakeFiles/ArdTest.dir/ArdTest.cpp.o: /home/pi/moos-ivp/mymoos/src/FunctionTesting/ArdTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/moos-ivp/mymoos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object FunctionTesting/CMakeFiles/ArdTest.dir/ArdTest.cpp.o"
	cd /home/pi/moos-ivp/mymoos/build/FunctionTesting && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ArdTest.dir/ArdTest.cpp.o -c /home/pi/moos-ivp/mymoos/src/FunctionTesting/ArdTest.cpp

FunctionTesting/CMakeFiles/ArdTest.dir/ArdTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ArdTest.dir/ArdTest.cpp.i"
	cd /home/pi/moos-ivp/mymoos/build/FunctionTesting && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/moos-ivp/mymoos/src/FunctionTesting/ArdTest.cpp > CMakeFiles/ArdTest.dir/ArdTest.cpp.i

FunctionTesting/CMakeFiles/ArdTest.dir/ArdTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ArdTest.dir/ArdTest.cpp.s"
	cd /home/pi/moos-ivp/mymoos/build/FunctionTesting && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/moos-ivp/mymoos/src/FunctionTesting/ArdTest.cpp -o CMakeFiles/ArdTest.dir/ArdTest.cpp.s

FunctionTesting/CMakeFiles/ArdTest.dir/ArdTest.cpp.o.requires:

.PHONY : FunctionTesting/CMakeFiles/ArdTest.dir/ArdTest.cpp.o.requires

FunctionTesting/CMakeFiles/ArdTest.dir/ArdTest.cpp.o.provides: FunctionTesting/CMakeFiles/ArdTest.dir/ArdTest.cpp.o.requires
	$(MAKE) -f FunctionTesting/CMakeFiles/ArdTest.dir/build.make FunctionTesting/CMakeFiles/ArdTest.dir/ArdTest.cpp.o.provides.build
.PHONY : FunctionTesting/CMakeFiles/ArdTest.dir/ArdTest.cpp.o.provides

FunctionTesting/CMakeFiles/ArdTest.dir/ArdTest.cpp.o.provides.build: FunctionTesting/CMakeFiles/ArdTest.dir/ArdTest.cpp.o


FunctionTesting/CMakeFiles/ArdTest.dir/rs232.c.o: FunctionTesting/CMakeFiles/ArdTest.dir/flags.make
FunctionTesting/CMakeFiles/ArdTest.dir/rs232.c.o: /home/pi/moos-ivp/mymoos/src/FunctionTesting/rs232.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/moos-ivp/mymoos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object FunctionTesting/CMakeFiles/ArdTest.dir/rs232.c.o"
	cd /home/pi/moos-ivp/mymoos/build/FunctionTesting && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ArdTest.dir/rs232.c.o   -c /home/pi/moos-ivp/mymoos/src/FunctionTesting/rs232.c

FunctionTesting/CMakeFiles/ArdTest.dir/rs232.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ArdTest.dir/rs232.c.i"
	cd /home/pi/moos-ivp/mymoos/build/FunctionTesting && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/moos-ivp/mymoos/src/FunctionTesting/rs232.c > CMakeFiles/ArdTest.dir/rs232.c.i

FunctionTesting/CMakeFiles/ArdTest.dir/rs232.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ArdTest.dir/rs232.c.s"
	cd /home/pi/moos-ivp/mymoos/build/FunctionTesting && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/moos-ivp/mymoos/src/FunctionTesting/rs232.c -o CMakeFiles/ArdTest.dir/rs232.c.s

FunctionTesting/CMakeFiles/ArdTest.dir/rs232.c.o.requires:

.PHONY : FunctionTesting/CMakeFiles/ArdTest.dir/rs232.c.o.requires

FunctionTesting/CMakeFiles/ArdTest.dir/rs232.c.o.provides: FunctionTesting/CMakeFiles/ArdTest.dir/rs232.c.o.requires
	$(MAKE) -f FunctionTesting/CMakeFiles/ArdTest.dir/build.make FunctionTesting/CMakeFiles/ArdTest.dir/rs232.c.o.provides.build
.PHONY : FunctionTesting/CMakeFiles/ArdTest.dir/rs232.c.o.provides

FunctionTesting/CMakeFiles/ArdTest.dir/rs232.c.o.provides.build: FunctionTesting/CMakeFiles/ArdTest.dir/rs232.c.o


# Object files for target ArdTest
ArdTest_OBJECTS = \
"CMakeFiles/ArdTest.dir/ArdTest.cpp.o" \
"CMakeFiles/ArdTest.dir/rs232.c.o"

# External object files for target ArdTest
ArdTest_EXTERNAL_OBJECTS =

FunctionTesting/ArdTest: FunctionTesting/CMakeFiles/ArdTest.dir/ArdTest.cpp.o
FunctionTesting/ArdTest: FunctionTesting/CMakeFiles/ArdTest.dir/rs232.c.o
FunctionTesting/ArdTest: FunctionTesting/CMakeFiles/ArdTest.dir/build.make
FunctionTesting/ArdTest: FunctionTesting/CMakeFiles/ArdTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/moos-ivp/mymoos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ArdTest"
	cd /home/pi/moos-ivp/mymoos/build/FunctionTesting && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ArdTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
FunctionTesting/CMakeFiles/ArdTest.dir/build: FunctionTesting/ArdTest

.PHONY : FunctionTesting/CMakeFiles/ArdTest.dir/build

FunctionTesting/CMakeFiles/ArdTest.dir/requires: FunctionTesting/CMakeFiles/ArdTest.dir/ArdTest.cpp.o.requires
FunctionTesting/CMakeFiles/ArdTest.dir/requires: FunctionTesting/CMakeFiles/ArdTest.dir/rs232.c.o.requires

.PHONY : FunctionTesting/CMakeFiles/ArdTest.dir/requires

FunctionTesting/CMakeFiles/ArdTest.dir/clean:
	cd /home/pi/moos-ivp/mymoos/build/FunctionTesting && $(CMAKE_COMMAND) -P CMakeFiles/ArdTest.dir/cmake_clean.cmake
.PHONY : FunctionTesting/CMakeFiles/ArdTest.dir/clean

FunctionTesting/CMakeFiles/ArdTest.dir/depend:
	cd /home/pi/moos-ivp/mymoos/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/moos-ivp/mymoos/src /home/pi/moos-ivp/mymoos/src/FunctionTesting /home/pi/moos-ivp/mymoos/build /home/pi/moos-ivp/mymoos/build/FunctionTesting /home/pi/moos-ivp/mymoos/build/FunctionTesting/CMakeFiles/ArdTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : FunctionTesting/CMakeFiles/ArdTest.dir/depend
