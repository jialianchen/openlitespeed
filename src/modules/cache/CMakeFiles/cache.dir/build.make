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
include src/modules/cache/CMakeFiles/cache.dir/depend.make

# Include the progress variables for this target.
include src/modules/cache/CMakeFiles/cache.dir/progress.make

# Include the compile flags for this target's objects.
include src/modules/cache/CMakeFiles/cache.dir/flags.make

src/modules/cache/CMakeFiles/cache.dir/cachemanager.cpp.o: src/modules/cache/CMakeFiles/cache.dir/flags.make
src/modules/cache/CMakeFiles/cache.dir/cachemanager.cpp.o: src/modules/cache/cachemanager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/godka/jlc/openlitespeed/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/modules/cache/CMakeFiles/cache.dir/cachemanager.cpp.o"
	cd /home/godka/jlc/openlitespeed/src/modules/cache && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cache.dir/cachemanager.cpp.o -c /home/godka/jlc/openlitespeed/src/modules/cache/cachemanager.cpp

src/modules/cache/CMakeFiles/cache.dir/cachemanager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cache.dir/cachemanager.cpp.i"
	cd /home/godka/jlc/openlitespeed/src/modules/cache && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/godka/jlc/openlitespeed/src/modules/cache/cachemanager.cpp > CMakeFiles/cache.dir/cachemanager.cpp.i

src/modules/cache/CMakeFiles/cache.dir/cachemanager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cache.dir/cachemanager.cpp.s"
	cd /home/godka/jlc/openlitespeed/src/modules/cache && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/godka/jlc/openlitespeed/src/modules/cache/cachemanager.cpp -o CMakeFiles/cache.dir/cachemanager.cpp.s

src/modules/cache/CMakeFiles/cache.dir/shmcachemanager.cpp.o: src/modules/cache/CMakeFiles/cache.dir/flags.make
src/modules/cache/CMakeFiles/cache.dir/shmcachemanager.cpp.o: src/modules/cache/shmcachemanager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/godka/jlc/openlitespeed/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/modules/cache/CMakeFiles/cache.dir/shmcachemanager.cpp.o"
	cd /home/godka/jlc/openlitespeed/src/modules/cache && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cache.dir/shmcachemanager.cpp.o -c /home/godka/jlc/openlitespeed/src/modules/cache/shmcachemanager.cpp

src/modules/cache/CMakeFiles/cache.dir/shmcachemanager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cache.dir/shmcachemanager.cpp.i"
	cd /home/godka/jlc/openlitespeed/src/modules/cache && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/godka/jlc/openlitespeed/src/modules/cache/shmcachemanager.cpp > CMakeFiles/cache.dir/shmcachemanager.cpp.i

src/modules/cache/CMakeFiles/cache.dir/shmcachemanager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cache.dir/shmcachemanager.cpp.s"
	cd /home/godka/jlc/openlitespeed/src/modules/cache && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/godka/jlc/openlitespeed/src/modules/cache/shmcachemanager.cpp -o CMakeFiles/cache.dir/shmcachemanager.cpp.s

src/modules/cache/CMakeFiles/cache.dir/cacheentry.cpp.o: src/modules/cache/CMakeFiles/cache.dir/flags.make
src/modules/cache/CMakeFiles/cache.dir/cacheentry.cpp.o: src/modules/cache/cacheentry.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/godka/jlc/openlitespeed/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/modules/cache/CMakeFiles/cache.dir/cacheentry.cpp.o"
	cd /home/godka/jlc/openlitespeed/src/modules/cache && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cache.dir/cacheentry.cpp.o -c /home/godka/jlc/openlitespeed/src/modules/cache/cacheentry.cpp

src/modules/cache/CMakeFiles/cache.dir/cacheentry.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cache.dir/cacheentry.cpp.i"
	cd /home/godka/jlc/openlitespeed/src/modules/cache && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/godka/jlc/openlitespeed/src/modules/cache/cacheentry.cpp > CMakeFiles/cache.dir/cacheentry.cpp.i

src/modules/cache/CMakeFiles/cache.dir/cacheentry.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cache.dir/cacheentry.cpp.s"
	cd /home/godka/jlc/openlitespeed/src/modules/cache && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/godka/jlc/openlitespeed/src/modules/cache/cacheentry.cpp -o CMakeFiles/cache.dir/cacheentry.cpp.s

src/modules/cache/CMakeFiles/cache.dir/cachehash.cpp.o: src/modules/cache/CMakeFiles/cache.dir/flags.make
src/modules/cache/CMakeFiles/cache.dir/cachehash.cpp.o: src/modules/cache/cachehash.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/godka/jlc/openlitespeed/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/modules/cache/CMakeFiles/cache.dir/cachehash.cpp.o"
	cd /home/godka/jlc/openlitespeed/src/modules/cache && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cache.dir/cachehash.cpp.o -c /home/godka/jlc/openlitespeed/src/modules/cache/cachehash.cpp

src/modules/cache/CMakeFiles/cache.dir/cachehash.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cache.dir/cachehash.cpp.i"
	cd /home/godka/jlc/openlitespeed/src/modules/cache && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/godka/jlc/openlitespeed/src/modules/cache/cachehash.cpp > CMakeFiles/cache.dir/cachehash.cpp.i

src/modules/cache/CMakeFiles/cache.dir/cachehash.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cache.dir/cachehash.cpp.s"
	cd /home/godka/jlc/openlitespeed/src/modules/cache && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/godka/jlc/openlitespeed/src/modules/cache/cachehash.cpp -o CMakeFiles/cache.dir/cachehash.cpp.s

src/modules/cache/CMakeFiles/cache.dir/cachestore.cpp.o: src/modules/cache/CMakeFiles/cache.dir/flags.make
src/modules/cache/CMakeFiles/cache.dir/cachestore.cpp.o: src/modules/cache/cachestore.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/godka/jlc/openlitespeed/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/modules/cache/CMakeFiles/cache.dir/cachestore.cpp.o"
	cd /home/godka/jlc/openlitespeed/src/modules/cache && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cache.dir/cachestore.cpp.o -c /home/godka/jlc/openlitespeed/src/modules/cache/cachestore.cpp

src/modules/cache/CMakeFiles/cache.dir/cachestore.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cache.dir/cachestore.cpp.i"
	cd /home/godka/jlc/openlitespeed/src/modules/cache && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/godka/jlc/openlitespeed/src/modules/cache/cachestore.cpp > CMakeFiles/cache.dir/cachestore.cpp.i

src/modules/cache/CMakeFiles/cache.dir/cachestore.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cache.dir/cachestore.cpp.s"
	cd /home/godka/jlc/openlitespeed/src/modules/cache && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/godka/jlc/openlitespeed/src/modules/cache/cachestore.cpp -o CMakeFiles/cache.dir/cachestore.cpp.s

src/modules/cache/CMakeFiles/cache.dir/ceheader.cpp.o: src/modules/cache/CMakeFiles/cache.dir/flags.make
src/modules/cache/CMakeFiles/cache.dir/ceheader.cpp.o: src/modules/cache/ceheader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/godka/jlc/openlitespeed/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/modules/cache/CMakeFiles/cache.dir/ceheader.cpp.o"
	cd /home/godka/jlc/openlitespeed/src/modules/cache && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cache.dir/ceheader.cpp.o -c /home/godka/jlc/openlitespeed/src/modules/cache/ceheader.cpp

src/modules/cache/CMakeFiles/cache.dir/ceheader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cache.dir/ceheader.cpp.i"
	cd /home/godka/jlc/openlitespeed/src/modules/cache && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/godka/jlc/openlitespeed/src/modules/cache/ceheader.cpp > CMakeFiles/cache.dir/ceheader.cpp.i

src/modules/cache/CMakeFiles/cache.dir/ceheader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cache.dir/ceheader.cpp.s"
	cd /home/godka/jlc/openlitespeed/src/modules/cache && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/godka/jlc/openlitespeed/src/modules/cache/ceheader.cpp -o CMakeFiles/cache.dir/ceheader.cpp.s

src/modules/cache/CMakeFiles/cache.dir/dirhashcacheentry.cpp.o: src/modules/cache/CMakeFiles/cache.dir/flags.make
src/modules/cache/CMakeFiles/cache.dir/dirhashcacheentry.cpp.o: src/modules/cache/dirhashcacheentry.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/godka/jlc/openlitespeed/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/modules/cache/CMakeFiles/cache.dir/dirhashcacheentry.cpp.o"
	cd /home/godka/jlc/openlitespeed/src/modules/cache && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cache.dir/dirhashcacheentry.cpp.o -c /home/godka/jlc/openlitespeed/src/modules/cache/dirhashcacheentry.cpp

src/modules/cache/CMakeFiles/cache.dir/dirhashcacheentry.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cache.dir/dirhashcacheentry.cpp.i"
	cd /home/godka/jlc/openlitespeed/src/modules/cache && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/godka/jlc/openlitespeed/src/modules/cache/dirhashcacheentry.cpp > CMakeFiles/cache.dir/dirhashcacheentry.cpp.i

src/modules/cache/CMakeFiles/cache.dir/dirhashcacheentry.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cache.dir/dirhashcacheentry.cpp.s"
	cd /home/godka/jlc/openlitespeed/src/modules/cache && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/godka/jlc/openlitespeed/src/modules/cache/dirhashcacheentry.cpp -o CMakeFiles/cache.dir/dirhashcacheentry.cpp.s

src/modules/cache/CMakeFiles/cache.dir/dirhashcachestore.cpp.o: src/modules/cache/CMakeFiles/cache.dir/flags.make
src/modules/cache/CMakeFiles/cache.dir/dirhashcachestore.cpp.o: src/modules/cache/dirhashcachestore.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/godka/jlc/openlitespeed/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object src/modules/cache/CMakeFiles/cache.dir/dirhashcachestore.cpp.o"
	cd /home/godka/jlc/openlitespeed/src/modules/cache && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cache.dir/dirhashcachestore.cpp.o -c /home/godka/jlc/openlitespeed/src/modules/cache/dirhashcachestore.cpp

src/modules/cache/CMakeFiles/cache.dir/dirhashcachestore.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cache.dir/dirhashcachestore.cpp.i"
	cd /home/godka/jlc/openlitespeed/src/modules/cache && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/godka/jlc/openlitespeed/src/modules/cache/dirhashcachestore.cpp > CMakeFiles/cache.dir/dirhashcachestore.cpp.i

src/modules/cache/CMakeFiles/cache.dir/dirhashcachestore.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cache.dir/dirhashcachestore.cpp.s"
	cd /home/godka/jlc/openlitespeed/src/modules/cache && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/godka/jlc/openlitespeed/src/modules/cache/dirhashcachestore.cpp -o CMakeFiles/cache.dir/dirhashcachestore.cpp.s

src/modules/cache/CMakeFiles/cache.dir/cacheconfig.cpp.o: src/modules/cache/CMakeFiles/cache.dir/flags.make
src/modules/cache/CMakeFiles/cache.dir/cacheconfig.cpp.o: src/modules/cache/cacheconfig.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/godka/jlc/openlitespeed/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object src/modules/cache/CMakeFiles/cache.dir/cacheconfig.cpp.o"
	cd /home/godka/jlc/openlitespeed/src/modules/cache && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cache.dir/cacheconfig.cpp.o -c /home/godka/jlc/openlitespeed/src/modules/cache/cacheconfig.cpp

src/modules/cache/CMakeFiles/cache.dir/cacheconfig.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cache.dir/cacheconfig.cpp.i"
	cd /home/godka/jlc/openlitespeed/src/modules/cache && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/godka/jlc/openlitespeed/src/modules/cache/cacheconfig.cpp > CMakeFiles/cache.dir/cacheconfig.cpp.i

src/modules/cache/CMakeFiles/cache.dir/cacheconfig.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cache.dir/cacheconfig.cpp.s"
	cd /home/godka/jlc/openlitespeed/src/modules/cache && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/godka/jlc/openlitespeed/src/modules/cache/cacheconfig.cpp -o CMakeFiles/cache.dir/cacheconfig.cpp.s

src/modules/cache/CMakeFiles/cache.dir/cachectrl.cpp.o: src/modules/cache/CMakeFiles/cache.dir/flags.make
src/modules/cache/CMakeFiles/cache.dir/cachectrl.cpp.o: src/modules/cache/cachectrl.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/godka/jlc/openlitespeed/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object src/modules/cache/CMakeFiles/cache.dir/cachectrl.cpp.o"
	cd /home/godka/jlc/openlitespeed/src/modules/cache && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cache.dir/cachectrl.cpp.o -c /home/godka/jlc/openlitespeed/src/modules/cache/cachectrl.cpp

src/modules/cache/CMakeFiles/cache.dir/cachectrl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cache.dir/cachectrl.cpp.i"
	cd /home/godka/jlc/openlitespeed/src/modules/cache && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/godka/jlc/openlitespeed/src/modules/cache/cachectrl.cpp > CMakeFiles/cache.dir/cachectrl.cpp.i

src/modules/cache/CMakeFiles/cache.dir/cachectrl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cache.dir/cachectrl.cpp.s"
	cd /home/godka/jlc/openlitespeed/src/modules/cache && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/godka/jlc/openlitespeed/src/modules/cache/cachectrl.cpp -o CMakeFiles/cache.dir/cachectrl.cpp.s

src/modules/cache/CMakeFiles/cache.dir/cache.cpp.o: src/modules/cache/CMakeFiles/cache.dir/flags.make
src/modules/cache/CMakeFiles/cache.dir/cache.cpp.o: src/modules/cache/cache.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/godka/jlc/openlitespeed/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object src/modules/cache/CMakeFiles/cache.dir/cache.cpp.o"
	cd /home/godka/jlc/openlitespeed/src/modules/cache && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cache.dir/cache.cpp.o -c /home/godka/jlc/openlitespeed/src/modules/cache/cache.cpp

src/modules/cache/CMakeFiles/cache.dir/cache.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cache.dir/cache.cpp.i"
	cd /home/godka/jlc/openlitespeed/src/modules/cache && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/godka/jlc/openlitespeed/src/modules/cache/cache.cpp > CMakeFiles/cache.dir/cache.cpp.i

src/modules/cache/CMakeFiles/cache.dir/cache.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cache.dir/cache.cpp.s"
	cd /home/godka/jlc/openlitespeed/src/modules/cache && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/godka/jlc/openlitespeed/src/modules/cache/cache.cpp -o CMakeFiles/cache.dir/cache.cpp.s

# Object files for target cache
cache_OBJECTS = \
"CMakeFiles/cache.dir/cachemanager.cpp.o" \
"CMakeFiles/cache.dir/shmcachemanager.cpp.o" \
"CMakeFiles/cache.dir/cacheentry.cpp.o" \
"CMakeFiles/cache.dir/cachehash.cpp.o" \
"CMakeFiles/cache.dir/cachestore.cpp.o" \
"CMakeFiles/cache.dir/ceheader.cpp.o" \
"CMakeFiles/cache.dir/dirhashcacheentry.cpp.o" \
"CMakeFiles/cache.dir/dirhashcachestore.cpp.o" \
"CMakeFiles/cache.dir/cacheconfig.cpp.o" \
"CMakeFiles/cache.dir/cachectrl.cpp.o" \
"CMakeFiles/cache.dir/cache.cpp.o"

# External object files for target cache
cache_EXTERNAL_OBJECTS =

src/modules/cache/libcache.a: src/modules/cache/CMakeFiles/cache.dir/cachemanager.cpp.o
src/modules/cache/libcache.a: src/modules/cache/CMakeFiles/cache.dir/shmcachemanager.cpp.o
src/modules/cache/libcache.a: src/modules/cache/CMakeFiles/cache.dir/cacheentry.cpp.o
src/modules/cache/libcache.a: src/modules/cache/CMakeFiles/cache.dir/cachehash.cpp.o
src/modules/cache/libcache.a: src/modules/cache/CMakeFiles/cache.dir/cachestore.cpp.o
src/modules/cache/libcache.a: src/modules/cache/CMakeFiles/cache.dir/ceheader.cpp.o
src/modules/cache/libcache.a: src/modules/cache/CMakeFiles/cache.dir/dirhashcacheentry.cpp.o
src/modules/cache/libcache.a: src/modules/cache/CMakeFiles/cache.dir/dirhashcachestore.cpp.o
src/modules/cache/libcache.a: src/modules/cache/CMakeFiles/cache.dir/cacheconfig.cpp.o
src/modules/cache/libcache.a: src/modules/cache/CMakeFiles/cache.dir/cachectrl.cpp.o
src/modules/cache/libcache.a: src/modules/cache/CMakeFiles/cache.dir/cache.cpp.o
src/modules/cache/libcache.a: src/modules/cache/CMakeFiles/cache.dir/build.make
src/modules/cache/libcache.a: src/modules/cache/CMakeFiles/cache.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/godka/jlc/openlitespeed/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Linking CXX static library libcache.a"
	cd /home/godka/jlc/openlitespeed/src/modules/cache && $(CMAKE_COMMAND) -P CMakeFiles/cache.dir/cmake_clean_target.cmake
	cd /home/godka/jlc/openlitespeed/src/modules/cache && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cache.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/modules/cache/CMakeFiles/cache.dir/build: src/modules/cache/libcache.a

.PHONY : src/modules/cache/CMakeFiles/cache.dir/build

src/modules/cache/CMakeFiles/cache.dir/clean:
	cd /home/godka/jlc/openlitespeed/src/modules/cache && $(CMAKE_COMMAND) -P CMakeFiles/cache.dir/cmake_clean.cmake
.PHONY : src/modules/cache/CMakeFiles/cache.dir/clean

src/modules/cache/CMakeFiles/cache.dir/depend:
	cd /home/godka/jlc/openlitespeed && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/godka/jlc/openlitespeed /home/godka/jlc/openlitespeed/src/modules/cache /home/godka/jlc/openlitespeed /home/godka/jlc/openlitespeed/src/modules/cache /home/godka/jlc/openlitespeed/src/modules/cache/CMakeFiles/cache.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/modules/cache/CMakeFiles/cache.dir/depend

