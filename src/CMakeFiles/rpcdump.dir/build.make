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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/cmake-gui

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/dasher/Development/litecoin/litecoin

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dasher/Development/litecoin/litecoin

# Include any dependencies generated for this target.
include src/CMakeFiles/rpcdump.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/rpcdump.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/rpcdump.dir/flags.make

src/CMakeFiles/rpcdump.dir/rpcdump.cpp.o: src/CMakeFiles/rpcdump.dir/flags.make
src/CMakeFiles/rpcdump.dir/rpcdump.cpp.o: src/rpcdump.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dasher/Development/litecoin/litecoin/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/rpcdump.dir/rpcdump.cpp.o"
	cd /home/dasher/Development/litecoin/litecoin/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/rpcdump.dir/rpcdump.cpp.o -c /home/dasher/Development/litecoin/litecoin/src/rpcdump.cpp

src/CMakeFiles/rpcdump.dir/rpcdump.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rpcdump.dir/rpcdump.cpp.i"
	cd /home/dasher/Development/litecoin/litecoin/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/dasher/Development/litecoin/litecoin/src/rpcdump.cpp > CMakeFiles/rpcdump.dir/rpcdump.cpp.i

src/CMakeFiles/rpcdump.dir/rpcdump.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rpcdump.dir/rpcdump.cpp.s"
	cd /home/dasher/Development/litecoin/litecoin/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/dasher/Development/litecoin/litecoin/src/rpcdump.cpp -o CMakeFiles/rpcdump.dir/rpcdump.cpp.s

src/CMakeFiles/rpcdump.dir/rpcdump.cpp.o.requires:
.PHONY : src/CMakeFiles/rpcdump.dir/rpcdump.cpp.o.requires

src/CMakeFiles/rpcdump.dir/rpcdump.cpp.o.provides: src/CMakeFiles/rpcdump.dir/rpcdump.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/rpcdump.dir/build.make src/CMakeFiles/rpcdump.dir/rpcdump.cpp.o.provides.build
.PHONY : src/CMakeFiles/rpcdump.dir/rpcdump.cpp.o.provides

src/CMakeFiles/rpcdump.dir/rpcdump.cpp.o.provides.build: src/CMakeFiles/rpcdump.dir/rpcdump.cpp.o

# Object files for target rpcdump
rpcdump_OBJECTS = \
"CMakeFiles/rpcdump.dir/rpcdump.cpp.o"

# External object files for target rpcdump
rpcdump_EXTERNAL_OBJECTS =

lib/librpcdump.a: src/CMakeFiles/rpcdump.dir/rpcdump.cpp.o
lib/librpcdump.a: src/CMakeFiles/rpcdump.dir/build.make
lib/librpcdump.a: src/CMakeFiles/rpcdump.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library ../lib/librpcdump.a"
	cd /home/dasher/Development/litecoin/litecoin/src && $(CMAKE_COMMAND) -P CMakeFiles/rpcdump.dir/cmake_clean_target.cmake
	cd /home/dasher/Development/litecoin/litecoin/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rpcdump.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/rpcdump.dir/build: lib/librpcdump.a
.PHONY : src/CMakeFiles/rpcdump.dir/build

src/CMakeFiles/rpcdump.dir/requires: src/CMakeFiles/rpcdump.dir/rpcdump.cpp.o.requires
.PHONY : src/CMakeFiles/rpcdump.dir/requires

src/CMakeFiles/rpcdump.dir/clean:
	cd /home/dasher/Development/litecoin/litecoin/src && $(CMAKE_COMMAND) -P CMakeFiles/rpcdump.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/rpcdump.dir/clean

src/CMakeFiles/rpcdump.dir/depend:
	cd /home/dasher/Development/litecoin/litecoin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dasher/Development/litecoin/litecoin /home/dasher/Development/litecoin/litecoin/src /home/dasher/Development/litecoin/litecoin /home/dasher/Development/litecoin/litecoin/src /home/dasher/Development/litecoin/litecoin/src/CMakeFiles/rpcdump.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/rpcdump.dir/depend

