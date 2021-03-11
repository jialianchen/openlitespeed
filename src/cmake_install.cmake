# Install script for directory: /home/godka/jlc/openlitespeed/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/openlitespeed" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/openlitespeed")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/openlitespeed"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/godka/jlc/openlitespeed/src/openlitespeed")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/openlitespeed" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/openlitespeed")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/openlitespeed"
         OLD_RPATH "/home/godka/jlc/openlitespeed/../thirdparty/lib:/home/godka/jlc/openlitespeed/src/liblsquic:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/openlitespeed")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/godka/jlc/openlitespeed/src/adns/cmake_install.cmake")
  include("/home/godka/jlc/openlitespeed/src/edio/cmake_install.cmake")
  include("/home/godka/jlc/openlitespeed/src/extensions/cmake_install.cmake")
  include("/home/godka/jlc/openlitespeed/src/http/cmake_install.cmake")
  include("/home/godka/jlc/openlitespeed/src/liblsquic/cmake_install.cmake")
  include("/home/godka/jlc/openlitespeed/src/log4cxx/cmake_install.cmake")
  include("/home/godka/jlc/openlitespeed/src/lsiapi/cmake_install.cmake")
  include("/home/godka/jlc/openlitespeed/src/lsr/cmake_install.cmake")
  include("/home/godka/jlc/openlitespeed/src/main/cmake_install.cmake")
  include("/home/godka/jlc/openlitespeed/src/modules/cmake_install.cmake")
  include("/home/godka/jlc/openlitespeed/src/quic/cmake_install.cmake")
  include("/home/godka/jlc/openlitespeed/src/shm/cmake_install.cmake")
  include("/home/godka/jlc/openlitespeed/src/socket/cmake_install.cmake")
  include("/home/godka/jlc/openlitespeed/src/spdy/cmake_install.cmake")
  include("/home/godka/jlc/openlitespeed/src/sslpp/cmake_install.cmake")
  include("/home/godka/jlc/openlitespeed/src/ssi/cmake_install.cmake")
  include("/home/godka/jlc/openlitespeed/src/thread/cmake_install.cmake")
  include("/home/godka/jlc/openlitespeed/src/util/cmake_install.cmake")
  include("/home/godka/jlc/openlitespeed/src/h2/cmake_install.cmake")

endif()

