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
include src/extensions/registry/CMakeFiles/registry.dir/depend.make

# Include the progress variables for this target.
include src/extensions/registry/CMakeFiles/registry.dir/progress.make

# Include the compile flags for this target's objects.
include src/extensions/registry/CMakeFiles/registry.dir/flags.make

src/extensions/registry/CMakeFiles/registry.dir/appconfig.cpp.o: src/extensions/registry/CMakeFiles/registry.dir/flags.make
src/extensions/registry/CMakeFiles/registry.dir/appconfig.cpp.o: src/extensions/registry/appconfig.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/godka/jlc/openlitespeed/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/extensions/registry/CMakeFiles/registry.dir/appconfig.cpp.o"
	cd /home/godka/jlc/openlitespeed/src/extensions/registry && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/registry.dir/appconfig.cpp.o -c /home/godka/jlc/openlitespeed/src/extensions/registry/appconfig.cpp

src/extensions/registry/CMakeFiles/registry.dir/appconfig.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/registry.dir/appconfig.cpp.i"
	cd /home/godka/jlc/openlitespeed/src/extensions/registry && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/godka/jlc/openlitespeed/src/extensions/registry/appconfig.cpp > CMakeFiles/registry.dir/appconfig.cpp.i

src/extensions/registry/CMakeFiles/registry.dir/appconfig.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/registry.dir/appconfig.cpp.s"
	cd /home/godka/jlc/openlitespeed/src/extensions/registry && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/godka/jlc/openlitespeed/src/extensions/registry/appconfig.cpp -o CMakeFiles/registry.dir/appconfig.cpp.s

src/extensions/registry/CMakeFiles/registry.dir/extappregistry.cpp.o: src/extensions/registry/CMakeFiles/registry.dir/flags.make
src/extensions/registry/CMakeFiles/registry.dir/extappregistry.cpp.o: src/extensions/registry/extappregistry.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/godka/jlc/openlitespeed/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/extensions/registry/CMakeFiles/registry.dir/extappregistry.cpp.o"
	cd /home/godka/jlc/openlitespeed/src/extensions/registry && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/registry.dir/extappregistry.cpp.o -c /home/godka/jlc/openlitespeed/src/extensions/registry/extappregistry.cpp

src/extensions/registry/CMakeFiles/registry.dir/extappregistry.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/registry.dir/extappregistry.cpp.i"
	cd /home/godka/jlc/openlitespeed/src/extensions/registry && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/godka/jlc/openlitespeed/src/extensions/registry/extappregistry.cpp > CMakeFiles/registry.dir/extappregistry.cpp.i

src/extensions/registry/CMakeFiles/registry.dir/extappregistry.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/registry.dir/extappregistry.cpp.s"
	cd /home/godka/jlc/openlitespeed/src/extensions/registry && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/godka/jlc/openlitespeed/src/extensions/registry/extappregistry.cpp -o CMakeFiles/registry.dir/extappregistry.cpp.s

# Object files for target registry
registry_OBJECTS = \
"CMakeFiles/registry.dir/appconfig.cpp.o" \
"CMakeFiles/registry.dir/extappregistry.cpp.o"

# External object files for target registry
registry_EXTERNAL_OBJECTS =

src/extensions/registry/libregistry.a: src/extensions/registry/CMakeFiles/registry.dir/appconfig.cpp.o
src/extensions/registry/libregistry.a: src/extensions/registry/CMakeFiles/registry.dir/extappregistry.cpp.o
src/extensions/registry/libregistry.a: src/extensions/registry/CMakeFiles/registry.dir/build.make
src/extensions/registry/libregistry.a: src/extensions/registry/CMakeFiles/registry.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/godka/jlc/openlitespeed/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libregistry.a"
	cd /home/godka/jlc/openlitespeed/src/extensions/registry && $(CMAKE_COMMAND) -P CMakeFiles/registry.dir/cmake_clean_target.cmake
	cd /home/godka/jlc/openlitespeed/src/extensions/registry && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/registry.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/extensions/registry/CMakeFiles/registry.dir/build: src/extensions/registry/libregistry.a

.PHONY : src/extensions/registry/CMakeFiles/registry.dir/build

src/extensions/registry/CMakeFiles/registry.dir/clean:
	cd /home/godka/jlc/openlitespeed/src/extensions/registry && $(CMAKE_COMMAND) -P CMakeFiles/registry.dir/cmake_clean.cmake
.PHONY : src/extensions/registry/CMakeFiles/registry.dir/clean

src/extensions/registry/CMakeFiles/registry.dir/depend:
	cd /home/godka/jlc/openlitespeed && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/godka/jlc/openlitespeed /home/godka/jlc/openlitespeed/src/extensions/registry /home/godka/jlc/openlitespeed /home/godka/jlc/openlitespeed/src/extensions/registry /home/godka/jlc/openlitespeed/src/extensions/registry/CMakeFiles/registry.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/extensions/registry/CMakeFiles/registry.dir/depend

