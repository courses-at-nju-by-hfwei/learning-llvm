# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

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
CMAKE_COMMAND = /home/hengxin/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/223.7571.171/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/hengxin/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/223.7571.171/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/hengxin/Documents/compiler-class/learning-llvm

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hengxin/Documents/compiler-class/learning-llvm/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/lexer.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/lexer.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/lexer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lexer.dir/flags.make

CMakeFiles/lexer.dir/llvm-tutorial/lexer.cpp.o: CMakeFiles/lexer.dir/flags.make
CMakeFiles/lexer.dir/llvm-tutorial/lexer.cpp.o: /home/hengxin/Documents/compiler-class/learning-llvm/llvm-tutorial/lexer.cpp
CMakeFiles/lexer.dir/llvm-tutorial/lexer.cpp.o: CMakeFiles/lexer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hengxin/Documents/compiler-class/learning-llvm/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/lexer.dir/llvm-tutorial/lexer.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/lexer.dir/llvm-tutorial/lexer.cpp.o -MF CMakeFiles/lexer.dir/llvm-tutorial/lexer.cpp.o.d -o CMakeFiles/lexer.dir/llvm-tutorial/lexer.cpp.o -c /home/hengxin/Documents/compiler-class/learning-llvm/llvm-tutorial/lexer.cpp

CMakeFiles/lexer.dir/llvm-tutorial/lexer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lexer.dir/llvm-tutorial/lexer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hengxin/Documents/compiler-class/learning-llvm/llvm-tutorial/lexer.cpp > CMakeFiles/lexer.dir/llvm-tutorial/lexer.cpp.i

CMakeFiles/lexer.dir/llvm-tutorial/lexer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lexer.dir/llvm-tutorial/lexer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hengxin/Documents/compiler-class/learning-llvm/llvm-tutorial/lexer.cpp -o CMakeFiles/lexer.dir/llvm-tutorial/lexer.cpp.s

# Object files for target lexer
lexer_OBJECTS = \
"CMakeFiles/lexer.dir/llvm-tutorial/lexer.cpp.o"

# External object files for target lexer
lexer_EXTERNAL_OBJECTS =

lexer: CMakeFiles/lexer.dir/llvm-tutorial/lexer.cpp.o
lexer: CMakeFiles/lexer.dir/build.make
lexer: CMakeFiles/lexer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hengxin/Documents/compiler-class/learning-llvm/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable lexer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lexer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lexer.dir/build: lexer
.PHONY : CMakeFiles/lexer.dir/build

CMakeFiles/lexer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lexer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lexer.dir/clean

CMakeFiles/lexer.dir/depend:
	cd /home/hengxin/Documents/compiler-class/learning-llvm/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hengxin/Documents/compiler-class/learning-llvm /home/hengxin/Documents/compiler-class/learning-llvm /home/hengxin/Documents/compiler-class/learning-llvm/cmake-build-debug /home/hengxin/Documents/compiler-class/learning-llvm/cmake-build-debug /home/hengxin/Documents/compiler-class/learning-llvm/cmake-build-debug/CMakeFiles/lexer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/lexer.dir/depend

