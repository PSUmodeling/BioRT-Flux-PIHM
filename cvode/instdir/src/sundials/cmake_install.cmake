# Install script for directory: /storage/home/wxz132/work/Github_2020/BioRT-Flux-PIHM/cvode/src/sundials

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

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  MESSAGE("
Install shared components
")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/sundials" TYPE FILE FILES
    "/storage/home/wxz132/work/Github_2020/BioRT-Flux-PIHM/cvode/include/sundials/sundials_band.h"
    "/storage/home/wxz132/work/Github_2020/BioRT-Flux-PIHM/cvode/include/sundials/sundials_dense.h"
    "/storage/home/wxz132/work/Github_2020/BioRT-Flux-PIHM/cvode/include/sundials/sundials_direct.h"
    "/storage/home/wxz132/work/Github_2020/BioRT-Flux-PIHM/cvode/include/sundials/sundials_fnvector.h"
    "/storage/home/wxz132/work/Github_2020/BioRT-Flux-PIHM/cvode/include/sundials/sundials_iterative.h"
    "/storage/home/wxz132/work/Github_2020/BioRT-Flux-PIHM/cvode/include/sundials/sundials_linearsolver.h"
    "/storage/home/wxz132/work/Github_2020/BioRT-Flux-PIHM/cvode/include/sundials/sundials_math.h"
    "/storage/home/wxz132/work/Github_2020/BioRT-Flux-PIHM/cvode/include/sundials/sundials_matrix.h"
    "/storage/home/wxz132/work/Github_2020/BioRT-Flux-PIHM/cvode/include/sundials/sundials_mpi.h"
    "/storage/home/wxz132/work/Github_2020/BioRT-Flux-PIHM/cvode/include/sundials/sundials_mpi_types.h"
    "/storage/home/wxz132/work/Github_2020/BioRT-Flux-PIHM/cvode/include/sundials/sundials_nonlinearsolver.h"
    "/storage/home/wxz132/work/Github_2020/BioRT-Flux-PIHM/cvode/include/sundials/sundials_mpi.h"
    "/storage/home/wxz132/work/Github_2020/BioRT-Flux-PIHM/cvode/include/sundials/sundials_mpi_types.h"
    "/storage/home/wxz132/work/Github_2020/BioRT-Flux-PIHM/cvode/include/sundials/sundials_nvector.h"
    "/storage/home/wxz132/work/Github_2020/BioRT-Flux-PIHM/cvode/include/sundials/sundials_pcg.h"
    "/storage/home/wxz132/work/Github_2020/BioRT-Flux-PIHM/cvode/include/sundials/sundials_sparse.h"
    "/storage/home/wxz132/work/Github_2020/BioRT-Flux-PIHM/cvode/include/sundials/sundials_spbcgs.h"
    "/storage/home/wxz132/work/Github_2020/BioRT-Flux-PIHM/cvode/include/sundials/sundials_spfgmr.h"
    "/storage/home/wxz132/work/Github_2020/BioRT-Flux-PIHM/cvode/include/sundials/sundials_spgmr.h"
    "/storage/home/wxz132/work/Github_2020/BioRT-Flux-PIHM/cvode/include/sundials/sundials_sptfqmr.h"
    "/storage/home/wxz132/work/Github_2020/BioRT-Flux-PIHM/cvode/include/sundials/sundials_types.h"
    "/storage/home/wxz132/work/Github_2020/BioRT-Flux-PIHM/cvode/include/sundials/sundials_version.h"
    )
endif()

