# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.24

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\Users\hfwei\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\223.8214.51\bin\cmake\win\bin\cmake.exe

# The command to remove a file.
RM = C:\Users\hfwei\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\223.8214.51\bin\cmake\win\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\compilers\learning-llvm

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\compilers\learning-llvm\cmake-build-debug

# Include any dependencies generated for this target.
include llvm-tutorial/CMakeFiles/lexer.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include llvm-tutorial/CMakeFiles/lexer.dir/compiler_depend.make

# Include the progress variables for this target.
include llvm-tutorial/CMakeFiles/lexer.dir/progress.make

# Include the compile flags for this target's objects.
include llvm-tutorial/CMakeFiles/lexer.dir/flags.make

llvm-tutorial/CMakeFiles/lexer.dir/lexer.cpp.obj: llvm-tutorial/CMakeFiles/lexer.dir/flags.make
llvm-tutorial/CMakeFiles/lexer.dir/lexer.cpp.obj: D:/compilers/learning-llvm/llvm-tutorial/lexer.cpp
llvm-tutorial/CMakeFiles/lexer.dir/lexer.cpp.obj: llvm-tutorial/CMakeFiles/lexer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\compilers\learning-llvm\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object llvm-tutorial/CMakeFiles/lexer.dir/lexer.cpp.obj"
	cd /d D:\compilers\learning-llvm\cmake-build-debug\llvm-tutorial && D:\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT llvm-tutorial/CMakeFiles/lexer.dir/lexer.cpp.obj -MF CMakeFiles\lexer.dir\lexer.cpp.obj.d -o CMakeFiles\lexer.dir\lexer.cpp.obj -c D:\compilers\learning-llvm\llvm-tutorial\lexer.cpp

llvm-tutorial/CMakeFiles/lexer.dir/lexer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lexer.dir/lexer.cpp.i"
	cd /d D:\compilers\learning-llvm\cmake-build-debug\llvm-tutorial && D:\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\compilers\learning-llvm\llvm-tutorial\lexer.cpp > CMakeFiles\lexer.dir\lexer.cpp.i

llvm-tutorial/CMakeFiles/lexer.dir/lexer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lexer.dir/lexer.cpp.s"
	cd /d D:\compilers\learning-llvm\cmake-build-debug\llvm-tutorial && D:\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\compilers\learning-llvm\llvm-tutorial\lexer.cpp -o CMakeFiles\lexer.dir\lexer.cpp.s

# Object files for target lexer
lexer_OBJECTS = \
"CMakeFiles/lexer.dir/lexer.cpp.obj"

# External object files for target lexer
lexer_EXTERNAL_OBJECTS =

llvm-tutorial/lexer.exe: llvm-tutorial/CMakeFiles/lexer.dir/lexer.cpp.obj
llvm-tutorial/lexer.exe: llvm-tutorial/CMakeFiles/lexer.dir/build.make
llvm-tutorial/lexer.exe: llvm-tutorial/CMakeFiles/lexer.dir/linklibs.rsp
llvm-tutorial/lexer.exe: llvm-tutorial/CMakeFiles/lexer.dir/objects1.rsp
llvm-tutorial/lexer.exe: llvm-tutorial/CMakeFiles/lexer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\compilers\learning-llvm\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable lexer.exe"
	cd /d D:\compilers\learning-llvm\cmake-build-debug\llvm-tutorial && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\lexer.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
llvm-tutorial/CMakeFiles/lexer.dir/build: llvm-tutorial/lexer.exe
.PHONY : llvm-tutorial/CMakeFiles/lexer.dir/build

llvm-tutorial/CMakeFiles/lexer.dir/clean:
	cd /d D:\compilers\learning-llvm\cmake-build-debug\llvm-tutorial && $(CMAKE_COMMAND) -P CMakeFiles\lexer.dir\cmake_clean.cmake
.PHONY : llvm-tutorial/CMakeFiles/lexer.dir/clean

llvm-tutorial/CMakeFiles/lexer.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\compilers\learning-llvm D:\compilers\learning-llvm\llvm-tutorial D:\compilers\learning-llvm\cmake-build-debug D:\compilers\learning-llvm\cmake-build-debug\llvm-tutorial D:\compilers\learning-llvm\cmake-build-debug\llvm-tutorial\CMakeFiles\lexer.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : llvm-tutorial/CMakeFiles/lexer.dir/depend
