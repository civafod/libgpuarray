# Install script for directory: /home/predator/Documents/Project/temp/libgpuarray/src

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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gpuarray" TYPE FILE FILES
    "/home/predator/Documents/Project/temp/libgpuarray/src/gpuarray/array.h"
    "/home/predator/Documents/Project/temp/libgpuarray/src/gpuarray/blas.h"
    "/home/predator/Documents/Project/temp/libgpuarray/src/gpuarray/collectives.h"
    "/home/predator/Documents/Project/temp/libgpuarray/src/gpuarray/buffer.h"
    "/home/predator/Documents/Project/temp/libgpuarray/src/gpuarray/buffer_blas.h"
    "/home/predator/Documents/Project/temp/libgpuarray/src/gpuarray/buffer_collectives.h"
    "/home/predator/Documents/Project/temp/libgpuarray/src/gpuarray/abi_version.h"
    "/home/predator/Documents/Project/temp/libgpuarray/src/gpuarray/config.h"
    "/home/predator/Documents/Project/temp/libgpuarray/src/gpuarray/elemwise.h"
    "/home/predator/Documents/Project/temp/libgpuarray/src/gpuarray/error.h"
    "/home/predator/Documents/Project/temp/libgpuarray/src/gpuarray/extension.h"
    "/home/predator/Documents/Project/temp/libgpuarray/src/gpuarray/ext_cuda.h"
    "/home/predator/Documents/Project/temp/libgpuarray/src/gpuarray/kernel.h"
    "/home/predator/Documents/Project/temp/libgpuarray/src/gpuarray/types.h"
    "/home/predator/Documents/Project/temp/libgpuarray/src/gpuarray/util.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgpuarray.so.3.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgpuarray.so.3"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgpuarray.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/predator/Documents/Project/temp/libgpuarray/lib/libgpuarray.so.3.0"
    "/home/predator/Documents/Project/temp/libgpuarray/lib/libgpuarray.so.3"
    "/home/predator/Documents/Project/temp/libgpuarray/lib/libgpuarray.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgpuarray.so.3.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgpuarray.so.3"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgpuarray.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/predator/Documents/Project/temp/libgpuarray/lib/libgpuarray-static.a")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/predator/Documents/Project/temp/libgpuarray/src/util/cmake_install.cmake")
  include("/home/predator/Documents/Project/temp/libgpuarray/src/loaders/cmake_install.cmake")

endif()

