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
include src/socket/CMakeFiles/socket.dir/depend.make

# Include the progress variables for this target.
include src/socket/CMakeFiles/socket.dir/progress.make

# Include the compile flags for this target's objects.
include src/socket/CMakeFiles/socket.dir/flags.make

src/socket/CMakeFiles/socket.dir/reuseport.cpp.o: src/socket/CMakeFiles/socket.dir/flags.make
src/socket/CMakeFiles/socket.dir/reuseport.cpp.o: src/socket/reuseport.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/godka/jlc/openlitespeed/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/socket/CMakeFiles/socket.dir/reuseport.cpp.o"
	cd /home/godka/jlc/openlitespeed/src/socket && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/socket.dir/reuseport.cpp.o -c /home/godka/jlc/openlitespeed/src/socket/reuseport.cpp

src/socket/CMakeFiles/socket.dir/reuseport.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/socket.dir/reuseport.cpp.i"
	cd /home/godka/jlc/openlitespeed/src/socket && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/godka/jlc/openlitespeed/src/socket/reuseport.cpp > CMakeFiles/socket.dir/reuseport.cpp.i

src/socket/CMakeFiles/socket.dir/reuseport.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/socket.dir/reuseport.cpp.s"
	cd /home/godka/jlc/openlitespeed/src/socket && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/godka/jlc/openlitespeed/src/socket/reuseport.cpp -o CMakeFiles/socket.dir/reuseport.cpp.s

src/socket/CMakeFiles/socket.dir/gsockaddr.cpp.o: src/socket/CMakeFiles/socket.dir/flags.make
src/socket/CMakeFiles/socket.dir/gsockaddr.cpp.o: src/socket/gsockaddr.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/godka/jlc/openlitespeed/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/socket/CMakeFiles/socket.dir/gsockaddr.cpp.o"
	cd /home/godka/jlc/openlitespeed/src/socket && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/socket.dir/gsockaddr.cpp.o -c /home/godka/jlc/openlitespeed/src/socket/gsockaddr.cpp

src/socket/CMakeFiles/socket.dir/gsockaddr.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/socket.dir/gsockaddr.cpp.i"
	cd /home/godka/jlc/openlitespeed/src/socket && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/godka/jlc/openlitespeed/src/socket/gsockaddr.cpp > CMakeFiles/socket.dir/gsockaddr.cpp.i

src/socket/CMakeFiles/socket.dir/gsockaddr.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/socket.dir/gsockaddr.cpp.s"
	cd /home/godka/jlc/openlitespeed/src/socket && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/godka/jlc/openlitespeed/src/socket/gsockaddr.cpp -o CMakeFiles/socket.dir/gsockaddr.cpp.s

src/socket/CMakeFiles/socket.dir/hostinfo.cpp.o: src/socket/CMakeFiles/socket.dir/flags.make
src/socket/CMakeFiles/socket.dir/hostinfo.cpp.o: src/socket/hostinfo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/godka/jlc/openlitespeed/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/socket/CMakeFiles/socket.dir/hostinfo.cpp.o"
	cd /home/godka/jlc/openlitespeed/src/socket && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/socket.dir/hostinfo.cpp.o -c /home/godka/jlc/openlitespeed/src/socket/hostinfo.cpp

src/socket/CMakeFiles/socket.dir/hostinfo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/socket.dir/hostinfo.cpp.i"
	cd /home/godka/jlc/openlitespeed/src/socket && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/godka/jlc/openlitespeed/src/socket/hostinfo.cpp > CMakeFiles/socket.dir/hostinfo.cpp.i

src/socket/CMakeFiles/socket.dir/hostinfo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/socket.dir/hostinfo.cpp.s"
	cd /home/godka/jlc/openlitespeed/src/socket && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/godka/jlc/openlitespeed/src/socket/hostinfo.cpp -o CMakeFiles/socket.dir/hostinfo.cpp.s

src/socket/CMakeFiles/socket.dir/tcpsockopt.cpp.o: src/socket/CMakeFiles/socket.dir/flags.make
src/socket/CMakeFiles/socket.dir/tcpsockopt.cpp.o: src/socket/tcpsockopt.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/godka/jlc/openlitespeed/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/socket/CMakeFiles/socket.dir/tcpsockopt.cpp.o"
	cd /home/godka/jlc/openlitespeed/src/socket && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/socket.dir/tcpsockopt.cpp.o -c /home/godka/jlc/openlitespeed/src/socket/tcpsockopt.cpp

src/socket/CMakeFiles/socket.dir/tcpsockopt.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/socket.dir/tcpsockopt.cpp.i"
	cd /home/godka/jlc/openlitespeed/src/socket && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/godka/jlc/openlitespeed/src/socket/tcpsockopt.cpp > CMakeFiles/socket.dir/tcpsockopt.cpp.i

src/socket/CMakeFiles/socket.dir/tcpsockopt.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/socket.dir/tcpsockopt.cpp.s"
	cd /home/godka/jlc/openlitespeed/src/socket && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/godka/jlc/openlitespeed/src/socket/tcpsockopt.cpp -o CMakeFiles/socket.dir/tcpsockopt.cpp.s

src/socket/CMakeFiles/socket.dir/tcpserversocket.cpp.o: src/socket/CMakeFiles/socket.dir/flags.make
src/socket/CMakeFiles/socket.dir/tcpserversocket.cpp.o: src/socket/tcpserversocket.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/godka/jlc/openlitespeed/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/socket/CMakeFiles/socket.dir/tcpserversocket.cpp.o"
	cd /home/godka/jlc/openlitespeed/src/socket && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/socket.dir/tcpserversocket.cpp.o -c /home/godka/jlc/openlitespeed/src/socket/tcpserversocket.cpp

src/socket/CMakeFiles/socket.dir/tcpserversocket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/socket.dir/tcpserversocket.cpp.i"
	cd /home/godka/jlc/openlitespeed/src/socket && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/godka/jlc/openlitespeed/src/socket/tcpserversocket.cpp > CMakeFiles/socket.dir/tcpserversocket.cpp.i

src/socket/CMakeFiles/socket.dir/tcpserversocket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/socket.dir/tcpserversocket.cpp.s"
	cd /home/godka/jlc/openlitespeed/src/socket && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/godka/jlc/openlitespeed/src/socket/tcpserversocket.cpp -o CMakeFiles/socket.dir/tcpserversocket.cpp.s

src/socket/CMakeFiles/socket.dir/tcpconnection.cpp.o: src/socket/CMakeFiles/socket.dir/flags.make
src/socket/CMakeFiles/socket.dir/tcpconnection.cpp.o: src/socket/tcpconnection.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/godka/jlc/openlitespeed/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/socket/CMakeFiles/socket.dir/tcpconnection.cpp.o"
	cd /home/godka/jlc/openlitespeed/src/socket && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/socket.dir/tcpconnection.cpp.o -c /home/godka/jlc/openlitespeed/src/socket/tcpconnection.cpp

src/socket/CMakeFiles/socket.dir/tcpconnection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/socket.dir/tcpconnection.cpp.i"
	cd /home/godka/jlc/openlitespeed/src/socket && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/godka/jlc/openlitespeed/src/socket/tcpconnection.cpp > CMakeFiles/socket.dir/tcpconnection.cpp.i

src/socket/CMakeFiles/socket.dir/tcpconnection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/socket.dir/tcpconnection.cpp.s"
	cd /home/godka/jlc/openlitespeed/src/socket && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/godka/jlc/openlitespeed/src/socket/tcpconnection.cpp -o CMakeFiles/socket.dir/tcpconnection.cpp.s

src/socket/CMakeFiles/socket.dir/streamsocket.cpp.o: src/socket/CMakeFiles/socket.dir/flags.make
src/socket/CMakeFiles/socket.dir/streamsocket.cpp.o: src/socket/streamsocket.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/godka/jlc/openlitespeed/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/socket/CMakeFiles/socket.dir/streamsocket.cpp.o"
	cd /home/godka/jlc/openlitespeed/src/socket && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/socket.dir/streamsocket.cpp.o -c /home/godka/jlc/openlitespeed/src/socket/streamsocket.cpp

src/socket/CMakeFiles/socket.dir/streamsocket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/socket.dir/streamsocket.cpp.i"
	cd /home/godka/jlc/openlitespeed/src/socket && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/godka/jlc/openlitespeed/src/socket/streamsocket.cpp > CMakeFiles/socket.dir/streamsocket.cpp.i

src/socket/CMakeFiles/socket.dir/streamsocket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/socket.dir/streamsocket.cpp.s"
	cd /home/godka/jlc/openlitespeed/src/socket && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/godka/jlc/openlitespeed/src/socket/streamsocket.cpp -o CMakeFiles/socket.dir/streamsocket.cpp.s

src/socket/CMakeFiles/socket.dir/serversocket.cpp.o: src/socket/CMakeFiles/socket.dir/flags.make
src/socket/CMakeFiles/socket.dir/serversocket.cpp.o: src/socket/serversocket.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/godka/jlc/openlitespeed/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object src/socket/CMakeFiles/socket.dir/serversocket.cpp.o"
	cd /home/godka/jlc/openlitespeed/src/socket && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/socket.dir/serversocket.cpp.o -c /home/godka/jlc/openlitespeed/src/socket/serversocket.cpp

src/socket/CMakeFiles/socket.dir/serversocket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/socket.dir/serversocket.cpp.i"
	cd /home/godka/jlc/openlitespeed/src/socket && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/godka/jlc/openlitespeed/src/socket/serversocket.cpp > CMakeFiles/socket.dir/serversocket.cpp.i

src/socket/CMakeFiles/socket.dir/serversocket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/socket.dir/serversocket.cpp.s"
	cd /home/godka/jlc/openlitespeed/src/socket && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/godka/jlc/openlitespeed/src/socket/serversocket.cpp -o CMakeFiles/socket.dir/serversocket.cpp.s

src/socket/CMakeFiles/socket.dir/coresocket.cpp.o: src/socket/CMakeFiles/socket.dir/flags.make
src/socket/CMakeFiles/socket.dir/coresocket.cpp.o: src/socket/coresocket.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/godka/jlc/openlitespeed/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object src/socket/CMakeFiles/socket.dir/coresocket.cpp.o"
	cd /home/godka/jlc/openlitespeed/src/socket && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/socket.dir/coresocket.cpp.o -c /home/godka/jlc/openlitespeed/src/socket/coresocket.cpp

src/socket/CMakeFiles/socket.dir/coresocket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/socket.dir/coresocket.cpp.i"
	cd /home/godka/jlc/openlitespeed/src/socket && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/godka/jlc/openlitespeed/src/socket/coresocket.cpp > CMakeFiles/socket.dir/coresocket.cpp.i

src/socket/CMakeFiles/socket.dir/coresocket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/socket.dir/coresocket.cpp.s"
	cd /home/godka/jlc/openlitespeed/src/socket && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/godka/jlc/openlitespeed/src/socket/coresocket.cpp -o CMakeFiles/socket.dir/coresocket.cpp.s

# Object files for target socket
socket_OBJECTS = \
"CMakeFiles/socket.dir/reuseport.cpp.o" \
"CMakeFiles/socket.dir/gsockaddr.cpp.o" \
"CMakeFiles/socket.dir/hostinfo.cpp.o" \
"CMakeFiles/socket.dir/tcpsockopt.cpp.o" \
"CMakeFiles/socket.dir/tcpserversocket.cpp.o" \
"CMakeFiles/socket.dir/tcpconnection.cpp.o" \
"CMakeFiles/socket.dir/streamsocket.cpp.o" \
"CMakeFiles/socket.dir/serversocket.cpp.o" \
"CMakeFiles/socket.dir/coresocket.cpp.o"

# External object files for target socket
socket_EXTERNAL_OBJECTS =

src/socket/libsocket.a: src/socket/CMakeFiles/socket.dir/reuseport.cpp.o
src/socket/libsocket.a: src/socket/CMakeFiles/socket.dir/gsockaddr.cpp.o
src/socket/libsocket.a: src/socket/CMakeFiles/socket.dir/hostinfo.cpp.o
src/socket/libsocket.a: src/socket/CMakeFiles/socket.dir/tcpsockopt.cpp.o
src/socket/libsocket.a: src/socket/CMakeFiles/socket.dir/tcpserversocket.cpp.o
src/socket/libsocket.a: src/socket/CMakeFiles/socket.dir/tcpconnection.cpp.o
src/socket/libsocket.a: src/socket/CMakeFiles/socket.dir/streamsocket.cpp.o
src/socket/libsocket.a: src/socket/CMakeFiles/socket.dir/serversocket.cpp.o
src/socket/libsocket.a: src/socket/CMakeFiles/socket.dir/coresocket.cpp.o
src/socket/libsocket.a: src/socket/CMakeFiles/socket.dir/build.make
src/socket/libsocket.a: src/socket/CMakeFiles/socket.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/godka/jlc/openlitespeed/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX static library libsocket.a"
	cd /home/godka/jlc/openlitespeed/src/socket && $(CMAKE_COMMAND) -P CMakeFiles/socket.dir/cmake_clean_target.cmake
	cd /home/godka/jlc/openlitespeed/src/socket && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/socket.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/socket/CMakeFiles/socket.dir/build: src/socket/libsocket.a

.PHONY : src/socket/CMakeFiles/socket.dir/build

src/socket/CMakeFiles/socket.dir/clean:
	cd /home/godka/jlc/openlitespeed/src/socket && $(CMAKE_COMMAND) -P CMakeFiles/socket.dir/cmake_clean.cmake
.PHONY : src/socket/CMakeFiles/socket.dir/clean

src/socket/CMakeFiles/socket.dir/depend:
	cd /home/godka/jlc/openlitespeed && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/godka/jlc/openlitespeed /home/godka/jlc/openlitespeed/src/socket /home/godka/jlc/openlitespeed /home/godka/jlc/openlitespeed/src/socket /home/godka/jlc/openlitespeed/src/socket/CMakeFiles/socket.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/socket/CMakeFiles/socket.dir/depend

