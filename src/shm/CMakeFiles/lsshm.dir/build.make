# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/godka/jlc/openlitespeed

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/godka/jlc/openlitespeed

# Include any dependencies generated for this target.
include src/shm/CMakeFiles/lsshm.dir/depend.make

# Include the progress variables for this target.
include src/shm/CMakeFiles/lsshm.dir/progress.make

# Include the compile flags for this target's objects.
include src/shm/CMakeFiles/lsshm.dir/flags.make

src/shm/CMakeFiles/lsshm.dir/addrmap.cpp.o: src/shm/CMakeFiles/lsshm.dir/flags.make
src/shm/CMakeFiles/lsshm.dir/addrmap.cpp.o: src/shm/addrmap.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/godka/jlc/openlitespeed/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/shm/CMakeFiles/lsshm.dir/addrmap.cpp.o"
	cd /home/godka/jlc/openlitespeed/src/shm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lsshm.dir/addrmap.cpp.o -c /home/godka/jlc/openlitespeed/src/shm/addrmap.cpp

src/shm/CMakeFiles/lsshm.dir/addrmap.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lsshm.dir/addrmap.cpp.i"
	cd /home/godka/jlc/openlitespeed/src/shm && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/godka/jlc/openlitespeed/src/shm/addrmap.cpp > CMakeFiles/lsshm.dir/addrmap.cpp.i

src/shm/CMakeFiles/lsshm.dir/addrmap.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lsshm.dir/addrmap.cpp.s"
	cd /home/godka/jlc/openlitespeed/src/shm && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/godka/jlc/openlitespeed/src/shm/addrmap.cpp -o CMakeFiles/lsshm.dir/addrmap.cpp.s

src/shm/CMakeFiles/lsshm.dir/lsshm.cpp.o: src/shm/CMakeFiles/lsshm.dir/flags.make
src/shm/CMakeFiles/lsshm.dir/lsshm.cpp.o: src/shm/lsshm.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/godka/jlc/openlitespeed/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/shm/CMakeFiles/lsshm.dir/lsshm.cpp.o"
	cd /home/godka/jlc/openlitespeed/src/shm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lsshm.dir/lsshm.cpp.o -c /home/godka/jlc/openlitespeed/src/shm/lsshm.cpp

src/shm/CMakeFiles/lsshm.dir/lsshm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lsshm.dir/lsshm.cpp.i"
	cd /home/godka/jlc/openlitespeed/src/shm && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/godka/jlc/openlitespeed/src/shm/lsshm.cpp > CMakeFiles/lsshm.dir/lsshm.cpp.i

src/shm/CMakeFiles/lsshm.dir/lsshm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lsshm.dir/lsshm.cpp.s"
	cd /home/godka/jlc/openlitespeed/src/shm && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/godka/jlc/openlitespeed/src/shm/lsshm.cpp -o CMakeFiles/lsshm.dir/lsshm.cpp.s

src/shm/CMakeFiles/lsshm.dir/lsshmhash.cpp.o: src/shm/CMakeFiles/lsshm.dir/flags.make
src/shm/CMakeFiles/lsshm.dir/lsshmhash.cpp.o: src/shm/lsshmhash.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/godka/jlc/openlitespeed/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/shm/CMakeFiles/lsshm.dir/lsshmhash.cpp.o"
	cd /home/godka/jlc/openlitespeed/src/shm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lsshm.dir/lsshmhash.cpp.o -c /home/godka/jlc/openlitespeed/src/shm/lsshmhash.cpp

src/shm/CMakeFiles/lsshm.dir/lsshmhash.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lsshm.dir/lsshmhash.cpp.i"
	cd /home/godka/jlc/openlitespeed/src/shm && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/godka/jlc/openlitespeed/src/shm/lsshmhash.cpp > CMakeFiles/lsshm.dir/lsshmhash.cpp.i

src/shm/CMakeFiles/lsshm.dir/lsshmhash.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lsshm.dir/lsshmhash.cpp.s"
	cd /home/godka/jlc/openlitespeed/src/shm && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/godka/jlc/openlitespeed/src/shm/lsshmhash.cpp -o CMakeFiles/lsshm.dir/lsshmhash.cpp.s

src/shm/CMakeFiles/lsshm.dir/lsshmlock.cpp.o: src/shm/CMakeFiles/lsshm.dir/flags.make
src/shm/CMakeFiles/lsshm.dir/lsshmlock.cpp.o: src/shm/lsshmlock.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/godka/jlc/openlitespeed/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/shm/CMakeFiles/lsshm.dir/lsshmlock.cpp.o"
	cd /home/godka/jlc/openlitespeed/src/shm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lsshm.dir/lsshmlock.cpp.o -c /home/godka/jlc/openlitespeed/src/shm/lsshmlock.cpp

src/shm/CMakeFiles/lsshm.dir/lsshmlock.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lsshm.dir/lsshmlock.cpp.i"
	cd /home/godka/jlc/openlitespeed/src/shm && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/godka/jlc/openlitespeed/src/shm/lsshmlock.cpp > CMakeFiles/lsshm.dir/lsshmlock.cpp.i

src/shm/CMakeFiles/lsshm.dir/lsshmlock.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lsshm.dir/lsshmlock.cpp.s"
	cd /home/godka/jlc/openlitespeed/src/shm && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/godka/jlc/openlitespeed/src/shm/lsshmlock.cpp -o CMakeFiles/lsshm.dir/lsshmlock.cpp.s

src/shm/CMakeFiles/lsshm.dir/lsshmpool.cpp.o: src/shm/CMakeFiles/lsshm.dir/flags.make
src/shm/CMakeFiles/lsshm.dir/lsshmpool.cpp.o: src/shm/lsshmpool.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/godka/jlc/openlitespeed/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/shm/CMakeFiles/lsshm.dir/lsshmpool.cpp.o"
	cd /home/godka/jlc/openlitespeed/src/shm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lsshm.dir/lsshmpool.cpp.o -c /home/godka/jlc/openlitespeed/src/shm/lsshmpool.cpp

src/shm/CMakeFiles/lsshm.dir/lsshmpool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lsshm.dir/lsshmpool.cpp.i"
	cd /home/godka/jlc/openlitespeed/src/shm && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/godka/jlc/openlitespeed/src/shm/lsshmpool.cpp > CMakeFiles/lsshm.dir/lsshmpool.cpp.i

src/shm/CMakeFiles/lsshm.dir/lsshmpool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lsshm.dir/lsshmpool.cpp.s"
	cd /home/godka/jlc/openlitespeed/src/shm && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/godka/jlc/openlitespeed/src/shm/lsshmpool.cpp -o CMakeFiles/lsshm.dir/lsshmpool.cpp.s

src/shm/CMakeFiles/lsshm.dir/lsshmtidmgr.cpp.o: src/shm/CMakeFiles/lsshm.dir/flags.make
src/shm/CMakeFiles/lsshm.dir/lsshmtidmgr.cpp.o: src/shm/lsshmtidmgr.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/godka/jlc/openlitespeed/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/shm/CMakeFiles/lsshm.dir/lsshmtidmgr.cpp.o"
	cd /home/godka/jlc/openlitespeed/src/shm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lsshm.dir/lsshmtidmgr.cpp.o -c /home/godka/jlc/openlitespeed/src/shm/lsshmtidmgr.cpp

src/shm/CMakeFiles/lsshm.dir/lsshmtidmgr.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lsshm.dir/lsshmtidmgr.cpp.i"
	cd /home/godka/jlc/openlitespeed/src/shm && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/godka/jlc/openlitespeed/src/shm/lsshmtidmgr.cpp > CMakeFiles/lsshm.dir/lsshmtidmgr.cpp.i

src/shm/CMakeFiles/lsshm.dir/lsshmtidmgr.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lsshm.dir/lsshmtidmgr.cpp.s"
	cd /home/godka/jlc/openlitespeed/src/shm && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/godka/jlc/openlitespeed/src/shm/lsshmtidmgr.cpp -o CMakeFiles/lsshm.dir/lsshmtidmgr.cpp.s

src/shm/CMakeFiles/lsshm.dir/lsshmhashobserver.cpp.o: src/shm/CMakeFiles/lsshm.dir/flags.make
src/shm/CMakeFiles/lsshm.dir/lsshmhashobserver.cpp.o: src/shm/lsshmhashobserver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/godka/jlc/openlitespeed/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/shm/CMakeFiles/lsshm.dir/lsshmhashobserver.cpp.o"
	cd /home/godka/jlc/openlitespeed/src/shm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lsshm.dir/lsshmhashobserver.cpp.o -c /home/godka/jlc/openlitespeed/src/shm/lsshmhashobserver.cpp

src/shm/CMakeFiles/lsshm.dir/lsshmhashobserver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lsshm.dir/lsshmhashobserver.cpp.i"
	cd /home/godka/jlc/openlitespeed/src/shm && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/godka/jlc/openlitespeed/src/shm/lsshmhashobserver.cpp > CMakeFiles/lsshm.dir/lsshmhashobserver.cpp.i

src/shm/CMakeFiles/lsshm.dir/lsshmhashobserver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lsshm.dir/lsshmhashobserver.cpp.s"
	cd /home/godka/jlc/openlitespeed/src/shm && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/godka/jlc/openlitespeed/src/shm/lsshmhashobserver.cpp -o CMakeFiles/lsshm.dir/lsshmhashobserver.cpp.s

# Object files for target lsshm
lsshm_OBJECTS = \
"CMakeFiles/lsshm.dir/addrmap.cpp.o" \
"CMakeFiles/lsshm.dir/lsshm.cpp.o" \
"CMakeFiles/lsshm.dir/lsshmhash.cpp.o" \
"CMakeFiles/lsshm.dir/lsshmlock.cpp.o" \
"CMakeFiles/lsshm.dir/lsshmpool.cpp.o" \
"CMakeFiles/lsshm.dir/lsshmtidmgr.cpp.o" \
"CMakeFiles/lsshm.dir/lsshmhashobserver.cpp.o"

# External object files for target lsshm
lsshm_EXTERNAL_OBJECTS =

src/shm/liblsshm.a: src/shm/CMakeFiles/lsshm.dir/addrmap.cpp.o
src/shm/liblsshm.a: src/shm/CMakeFiles/lsshm.dir/lsshm.cpp.o
src/shm/liblsshm.a: src/shm/CMakeFiles/lsshm.dir/lsshmhash.cpp.o
src/shm/liblsshm.a: src/shm/CMakeFiles/lsshm.dir/lsshmlock.cpp.o
src/shm/liblsshm.a: src/shm/CMakeFiles/lsshm.dir/lsshmpool.cpp.o
src/shm/liblsshm.a: src/shm/CMakeFiles/lsshm.dir/lsshmtidmgr.cpp.o
src/shm/liblsshm.a: src/shm/CMakeFiles/lsshm.dir/lsshmhashobserver.cpp.o
src/shm/liblsshm.a: src/shm/CMakeFiles/lsshm.dir/build.make
src/shm/liblsshm.a: src/shm/CMakeFiles/lsshm.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/godka/jlc/openlitespeed/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX static library liblsshm.a"
	cd /home/godka/jlc/openlitespeed/src/shm && $(CMAKE_COMMAND) -P CMakeFiles/lsshm.dir/cmake_clean_target.cmake
	cd /home/godka/jlc/openlitespeed/src/shm && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lsshm.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/shm/CMakeFiles/lsshm.dir/build: src/shm/liblsshm.a

.PHONY : src/shm/CMakeFiles/lsshm.dir/build

src/shm/CMakeFiles/lsshm.dir/clean:
	cd /home/godka/jlc/openlitespeed/src/shm && $(CMAKE_COMMAND) -P CMakeFiles/lsshm.dir/cmake_clean.cmake
.PHONY : src/shm/CMakeFiles/lsshm.dir/clean

src/shm/CMakeFiles/lsshm.dir/depend:
	cd /home/godka/jlc/openlitespeed && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/godka/jlc/openlitespeed /home/godka/jlc/openlitespeed/src/shm /home/godka/jlc/openlitespeed /home/godka/jlc/openlitespeed/src/shm /home/godka/jlc/openlitespeed/src/shm/CMakeFiles/lsshm.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/shm/CMakeFiles/lsshm.dir/depend
