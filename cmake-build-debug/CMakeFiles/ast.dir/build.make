# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/hengxin/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/211.7628.27/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/hengxin/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/211.7628.27/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/hengxin/Documents/git-projects/learning/learning-llvm

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hengxin/Documents/git-projects/learning/learning-llvm/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/ast.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ast.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ast.dir/flags.make

CMakeFiles/ast.dir/llvm-tutorial/ast.cpp.o: CMakeFiles/ast.dir/flags.make
CMakeFiles/ast.dir/llvm-tutorial/ast.cpp.o: ../llvm-tutorial/ast.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hengxin/Documents/git-projects/learning/learning-llvm/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ast.dir/llvm-tutorial/ast.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ast.dir/llvm-tutorial/ast.cpp.o -c /home/hengxin/Documents/git-projects/learning/learning-llvm/llvm-tutorial/ast.cpp

CMakeFiles/ast.dir/llvm-tutorial/ast.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ast.dir/llvm-tutorial/ast.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hengxin/Documents/git-projects/learning/learning-llvm/llvm-tutorial/ast.cpp > CMakeFiles/ast.dir/llvm-tutorial/ast.cpp.i

CMakeFiles/ast.dir/llvm-tutorial/ast.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ast.dir/llvm-tutorial/ast.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hengxin/Documents/git-projects/learning/learning-llvm/llvm-tutorial/ast.cpp -o CMakeFiles/ast.dir/llvm-tutorial/ast.cpp.s

# Object files for target ast
ast_OBJECTS = \
"CMakeFiles/ast.dir/llvm-tutorial/ast.cpp.o"

# External object files for target ast
ast_EXTERNAL_OBJECTS =

ast: CMakeFiles/ast.dir/llvm-tutorial/ast.cpp.o
ast: CMakeFiles/ast.dir/build.make
ast: CMakeFiles/ast.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hengxin/Documents/git-projects/learning/learning-llvm/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ast"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ast.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ast.dir/build: ast

.PHONY : CMakeFiles/ast.dir/build

CMakeFiles/ast.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ast.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ast.dir/clean

CMakeFiles/ast.dir/depend:
	cd /home/hengxin/Documents/git-projects/learning/learning-llvm/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hengxin/Documents/git-projects/learning/learning-llvm /home/hengxin/Documents/git-projects/learning/learning-llvm /home/hengxin/Documents/git-projects/learning/learning-llvm/cmake-build-debug /home/hengxin/Documents/git-projects/learning/learning-llvm/cmake-build-debug /home/hengxin/Documents/git-projects/learning/learning-llvm/cmake-build-debug/CMakeFiles/ast.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ast.dir/depend
