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
include src/CMakeFiles/db.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/db.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/db.dir/flags.make

src/CMakeFiles/db.dir/db.cpp.o: src/CMakeFiles/db.dir/flags.make
src/CMakeFiles/db.dir/db.cpp.o: src/db.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dasher/Development/litecoin/litecoin/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/db.dir/db.cpp.o"
	cd /home/dasher/Development/litecoin/litecoin/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/db.dir/db.cpp.o -c /home/dasher/Development/litecoin/litecoin/src/db.cpp

src/CMakeFiles/db.dir/db.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/db.dir/db.cpp.i"
	cd /home/dasher/Development/litecoin/litecoin/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/dasher/Development/litecoin/litecoin/src/db.cpp > CMakeFiles/db.dir/db.cpp.i

src/CMakeFiles/db.dir/db.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/db.dir/db.cpp.s"
	cd /home/dasher/Development/litecoin/litecoin/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/dasher/Development/litecoin/litecoin/src/db.cpp -o CMakeFiles/db.dir/db.cpp.s

src/CMakeFiles/db.dir/db.cpp.o.requires:
.PHONY : src/CMakeFiles/db.dir/db.cpp.o.requires

src/CMakeFiles/db.dir/db.cpp.o.provides: src/CMakeFiles/db.dir/db.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/db.dir/build.make src/CMakeFiles/db.dir/db.cpp.o.provides.build
.PHONY : src/CMakeFiles/db.dir/db.cpp.o.provides

src/CMakeFiles/db.dir/db.cpp.o.provides.build: src/CMakeFiles/db.dir/db.cpp.o

# Object files for target db
db_OBJECTS = \
"CMakeFiles/db.dir/db.cpp.o"

# External object files for target db
db_EXTERNAL_OBJECTS =

lib/libdb.a: src/CMakeFiles/db.dir/db.cpp.o
lib/libdb.a: src/CMakeFiles/db.dir/build.make
lib/libdb.a: src/CMakeFiles/db.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library ../lib/libdb.a"
	cd /home/dasher/Development/litecoin/litecoin/src && $(CMAKE_COMMAND) -P CMakeFiles/db.dir/cmake_clean_target.cmake
	cd /home/dasher/Development/litecoin/litecoin/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/db.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/db.dir/build: lib/libdb.a
.PHONY : src/CMakeFiles/db.dir/build

src/CMakeFiles/db.dir/requires: src/CMakeFiles/db.dir/db.cpp.o.requires
.PHONY : src/CMakeFiles/db.dir/requires

src/CMakeFiles/db.dir/clean:
	cd /home/dasher/Development/litecoin/litecoin/src && $(CMAKE_COMMAND) -P CMakeFiles/db.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/db.dir/clean

src/CMakeFiles/db.dir/depend:
	cd /home/dasher/Development/litecoin/litecoin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dasher/Development/litecoin/litecoin /home/dasher/Development/litecoin/litecoin/src /home/dasher/Development/litecoin/litecoin /home/dasher/Development/litecoin/litecoin/src /home/dasher/Development/litecoin/litecoin/src/CMakeFiles/db.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/db.dir/depend

