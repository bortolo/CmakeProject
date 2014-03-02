cmake_minimum_required (VERSION 2.6)

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)

option (USE_SHARED  "Use shared library" OFF) 

if (USE_SHARED)
	add_library(MathFunctions SHARED src/mysqrt.cpp)
else (!USE_SHARED)
	add_library(MathFunctions src/mysqrt.cpp)
endif (USE_SHARED)

install (TARGETS MathFunctions DESTINATION bin)
install (FILES MathFunctions.hpp DESTINATION include)
