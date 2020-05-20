# Install script for directory: /storage/home/wxz132/work/Github_2020/BioRT-Flux-PIHM/cvode/src/sunlinsol

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/storage/home/wxz132/work/Github_2020/BioRT-Flux-PIHM/cvode/instdir")
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
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/storage/home/wxz132/work/Github_2020/BioRT-Flux-PIHM/cvode/instdir/src/sunlinsol/band/cmake_install.cmake")
  include("/storage/home/wxz132/work/Github_2020/BioRT-Flux-PIHM/cvode/instdir/src/sunlinsol/dense/cmake_install.cmake")
  include("/storage/home/wxz132/work/Github_2020/BioRT-Flux-PIHM/cvode/instdir/src/sunlinsol/pcg/cmake_install.cmake")
  include("/storage/home/wxz132/work/Github_2020/BioRT-Flux-PIHM/cvode/instdir/src/sunlinsol/spbcgs/cmake_install.cmake")
  include("/storage/home/wxz132/work/Github_2020/BioRT-Flux-PIHM/cvode/instdir/src/sunlinsol/spfgmr/cmake_install.cmake")
  include("/storage/home/wxz132/work/Github_2020/BioRT-Flux-PIHM/cvode/instdir/src/sunlinsol/spgmr/cmake_install.cmake")
  include("/storage/home/wxz132/work/Github_2020/BioRT-Flux-PIHM/cvode/instdir/src/sunlinsol/sptfqmr/cmake_install.cmake")

endif()

