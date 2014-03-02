cmake_minimum_required (VERSION 2.6)

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)

#add_library(MathFunctions src/mysqrt.cpp)
add_library(MathFunctions SHARED src/mysqrt.cpp)

install (TARGETS MathFunctions DESTINATION bin)
install (FILES MathFunctions.hpp DESTINATION include)
