# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /opt/local/bin/cmake

# The command to remove a file.
RM = /opt/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /opt/local/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/andreabortolossi/Desktop/CODICI/CMAKE

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/andreabortolossi/Desktop/CODICI/CMAKE

# Include any dependencies generated for this target.
include CMakeFiles/Tutorial.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Tutorial.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Tutorial.dir/flags.make

CMakeFiles/Tutorial.dir/SquareRoot.cpp.o: CMakeFiles/Tutorial.dir/flags.make
CMakeFiles/Tutorial.dir/SquareRoot.cpp.o: SquareRoot.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/andreabortolossi/Desktop/CODICI/CMAKE/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Tutorial.dir/SquareRoot.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Tutorial.dir/SquareRoot.cpp.o -c /Users/andreabortolossi/Desktop/CODICI/CMAKE/SquareRoot.cpp

CMakeFiles/Tutorial.dir/SquareRoot.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Tutorial.dir/SquareRoot.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/andreabortolossi/Desktop/CODICI/CMAKE/SquareRoot.cpp > CMakeFiles/Tutorial.dir/SquareRoot.cpp.i

CMakeFiles/Tutorial.dir/SquareRoot.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Tutorial.dir/SquareRoot.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/andreabortolossi/Desktop/CODICI/CMAKE/SquareRoot.cpp -o CMakeFiles/Tutorial.dir/SquareRoot.cpp.s

CMakeFiles/Tutorial.dir/SquareRoot.cpp.o.requires:
.PHONY : CMakeFiles/Tutorial.dir/SquareRoot.cpp.o.requires

CMakeFiles/Tutorial.dir/SquareRoot.cpp.o.provides: CMakeFiles/Tutorial.dir/SquareRoot.cpp.o.requires
	$(MAKE) -f CMakeFiles/Tutorial.dir/build.make CMakeFiles/Tutorial.dir/SquareRoot.cpp.o.provides.build
.PHONY : CMakeFiles/Tutorial.dir/SquareRoot.cpp.o.provides

CMakeFiles/Tutorial.dir/SquareRoot.cpp.o.provides.build: CMakeFiles/Tutorial.dir/SquareRoot.cpp.o

# Object files for target Tutorial
Tutorial_OBJECTS = \
"CMakeFiles/Tutorial.dir/SquareRoot.cpp.o"

# External object files for target Tutorial
Tutorial_EXTERNAL_OBJECTS =

Tutorial: CMakeFiles/Tutorial.dir/SquareRoot.cpp.o
Tutorial: CMakeFiles/Tutorial.dir/build.make
Tutorial: CMakeFiles/Tutorial.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable Tutorial"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Tutorial.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Tutorial.dir/build: Tutorial
.PHONY : CMakeFiles/Tutorial.dir/build

CMakeFiles/Tutorial.dir/requires: CMakeFiles/Tutorial.dir/SquareRoot.cpp.o.requires
.PHONY : CMakeFiles/Tutorial.dir/requires

CMakeFiles/Tutorial.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Tutorial.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Tutorial.dir/clean

CMakeFiles/Tutorial.dir/depend:
	cd /Users/andreabortolossi/Desktop/CODICI/CMAKE && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/andreabortolossi/Desktop/CODICI/CMAKE /Users/andreabortolossi/Desktop/CODICI/CMAKE /Users/andreabortolossi/Desktop/CODICI/CMAKE /Users/andreabortolossi/Desktop/CODICI/CMAKE /Users/andreabortolossi/Desktop/CODICI/CMAKE/CMakeFiles/Tutorial.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Tutorial.dir/depend

