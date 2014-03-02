cmake_minimum_required (VERSION 2.6)
project (Tutorial)

# The version number.
set (Tutorial_VERSION_MAJOR 5)
set (Tutorial_VERSION_MINOR 7)

# SET and USE TutorialConfig =======================================
# configure a header file to pass some of the CMake settings to the source code
configure_file (
  "${PROJECT_SOURCE_DIR}/TutorialConfig.h.in"
  "${PROJECT_BINARY_DIR}/TutorialConfig.h"
  )
 
# add the binary tree to the search path for include files so that we will find TutorialConfig.h
include_directories("${PROJECT_BINARY_DIR}")

# COMPILING PART =============================================
# Should we use our own math functions?
option (USE_MYMATH  "Use tutorial provided math implementation" OFF) 

# Add the MathFunctions library?
if (USE_MYMATH)
  include_directories ("${PROJECT_SOURCE_DIR}/MathFunctions")
  LINK_DIRECTORIES("${PROJECT_SOURCE_DIR}/MathFunctions")
  add_directory (${CMAKE_BINARY_DIR}/MathFunctions)
  set (EXTRA_LIBS ${EXTRA_LIBS} MathFunctions)
endif (USE_MYMATH)
 
# add the executable
add_executable (Tutorial SquareRoot.cpp)
target_link_libraries (Tutorial ${EXTRA_LIBS})



# Add the install targets ======================================
# To enable install target, remember that you can set
# CMAKE_INSTALL_PREFIX to choose where install the project
# You have to install also libraries so remember of modify also CMake
# file of library
install (TARGETS Tutorial DESTINATION bin)
install (FILES "${PROJECT_BINARY_DIR}/TutorialConfig.h" DESTINATION include)


#TESTS =================================================
# Command to enable test, to run test simply type ctest from command line
enable_testing ()

# does the application run
add_test (TutorialRuns Tutorial 25)

# does it sqrt of 25
add_test (TutorialComp25 Tutorial 25)
set_tests_properties (TutorialComp25 PROPERTIES PASS_REGULAR_EXPRESSION "25 is 5")

# does it handle negative numbers
add_test (TutorialNegative Tutorial -25)
set_tests_properties (TutorialNegative  PROPERTIES PASS_REGULAR_EXPRESSION "-25 is 0")
 
# does it handle small numbers
add_test (TutorialSmall Tutorial 0.0001)
set_tests_properties (TutorialSmall  PROPERTIES PASS_REGULAR_EXPRESSION "0.0001 is 0.01")
 
# does the usage message work?
add_test (TutorialUsage Tutorial)
set_tests_properties (TutorialUsage  PROPERTIES  PASS_REGULAR_EXPRESSION "Usage:.*number")

# TO EXPORT OUR CODE ===================================
# build a CPack driven installer package
include (InstallRequiredSystemLibraries)
set (CPACK_RESOURCE_FILE_LICENSE  
     "${CMAKE_CURRENT_SOURCE_DIR}/License.txt")
set (CPACK_PACKAGE_VERSION_MAJOR "${Tutorial_VERSION_MAJOR}")
set (CPACK_PACKAGE_VERSION_MINOR "${Tutorial_VERSION_MINOR}")
include (CPack)
