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
include src/modules/modgzip/CMakeFiles/modgzip.dir/depend.make

# Include the progress variables for this target.
include src/modules/modgzip/CMakeFiles/modgzip.dir/progress.make

# Include the compile flags for this target's objects.
include src/modules/modgzip/CMakeFiles/modgzip.dir/flags.make

src/modules/modgzip/CMakeFiles/modgzip.dir/modgzip.cpp.o: src/modules/modgzip/CMakeFiles/modgzip.dir/flags.make
src/modules/modgzip/CMakeFiles/modgzip.dir/modgzip.cpp.o: src/modules/modgzip/modgzip.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/godka/jlc/openlitespeed/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/modules/modgzip/CMakeFiles/modgzip.dir/modgzip.cpp.o"
	cd /home/godka/jlc/openlitespeed/src/modules/modgzip && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/modgzip.dir/modgzip.cpp.o -c /home/godka/jlc/openlitespeed/src/modules/modgzip/modgzip.cpp

src/modules/modgzip/CMakeFiles/modgzip.dir/modgzip.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/modgzip.dir/modgzip.cpp.i"
	cd /home/godka/jlc/openlitespeed/src/modules/modgzip && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/godka/jlc/openlitespeed/src/modules/modgzip/modgzip.cpp > CMakeFiles/modgzip.dir/modgzip.cpp.i

src/modules/modgzip/CMakeFiles/modgzip.dir/modgzip.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/modgzip.dir/modgzip.cpp.s"
	cd /home/godka/jlc/openlitespeed/src/modules/modgzip && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/godka/jlc/openlitespeed/src/modules/modgzip/modgzip.cpp -o CMakeFiles/modgzip.dir/modgzip.cpp.s

# Object files for target modgzip
modgzip_OBJECTS = \
"CMakeFiles/modgzip.dir/modgzip.cpp.o"

# External object files for target modgzip
modgzip_EXTERNAL_OBJECTS =

src/modules/modgzip/libmodgzip.a: src/modules/modgzip/CMakeFiles/modgzip.dir/modgzip.cpp.o
src/modules/modgzip/libmodgzip.a: src/modules/modgzip/CMakeFiles/modgzip.dir/build.make
src/modules/modgzip/libmodgzip.a: src/modules/modgzip/CMakeFiles/modgzip.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/godka/jlc/openlitespeed/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libmodgzip.a"
	cd /home/godka/jlc/openlitespeed/src/modules/modgzip && $(CMAKE_COMMAND) -P CMakeFiles/modgzip.dir/cmake_clean_target.cmake
	cd /home/godka/jlc/openlitespeed/src/modules/modgzip && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/modgzip.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/modules/modgzip/CMakeFiles/modgzip.dir/build: src/modules/modgzip/libmodgzip.a

.PHONY : src/modules/modgzip/CMakeFiles/modgzip.dir/build

src/modules/modgzip/CMakeFiles/modgzip.dir/clean:
	cd /home/godka/jlc/openlitespeed/src/modules/modgzip && $(CMAKE_COMMAND) -P CMakeFiles/modgzip.dir/cmake_clean.cmake
.PHONY : src/modules/modgzip/CMakeFiles/modgzip.dir/clean

src/modules/modgzip/CMakeFiles/modgzip.dir/depend:
	cd /home/godka/jlc/openlitespeed && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/godka/jlc/openlitespeed /home/godka/jlc/openlitespeed/src/modules/modgzip /home/godka/jlc/openlitespeed /home/godka/jlc/openlitespeed/src/modules/modgzip /home/godka/jlc/openlitespeed/src/modules/modgzip/CMakeFiles/modgzip.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/modules/modgzip/CMakeFiles/modgzip.dir/depend

