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
include 10-llvm/CMakeFiles/hello.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include 10-llvm/CMakeFiles/hello.dir/compiler_depend.make

# Include the progress variables for this target.
include 10-llvm/CMakeFiles/hello.dir/progress.make

# Include the compile flags for this target's objects.
include 10-llvm/CMakeFiles/hello.dir/flags.make

10-llvm/CMakeFiles/hello.dir/hello/hello.c.obj: 10-llvm/CMakeFiles/hello.dir/flags.make
10-llvm/CMakeFiles/hello.dir/hello/hello.c.obj: D:/compilers/learning-llvm/10-llvm/hello/hello.c
10-llvm/CMakeFiles/hello.dir/hello/hello.c.obj: 10-llvm/CMakeFiles/hello.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\compilers\learning-llvm\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object 10-llvm/CMakeFiles/hello.dir/hello/hello.c.obj"
	cd /d D:\compilers\learning-llvm\cmake-build-debug\10-llvm && D:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT 10-llvm/CMakeFiles/hello.dir/hello/hello.c.obj -MF CMakeFiles\hello.dir\hello\hello.c.obj.d -o CMakeFiles\hello.dir\hello\hello.c.obj -c D:\compilers\learning-llvm\10-llvm\hello\hello.c

10-llvm/CMakeFiles/hello.dir/hello/hello.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/hello.dir/hello/hello.c.i"
	cd /d D:\compilers\learning-llvm\cmake-build-debug\10-llvm && D:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\compilers\learning-llvm\10-llvm\hello\hello.c > CMakeFiles\hello.dir\hello\hello.c.i

10-llvm/CMakeFiles/hello.dir/hello/hello.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/hello.dir/hello/hello.c.s"
	cd /d D:\compilers\learning-llvm\cmake-build-debug\10-llvm && D:\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\compilers\learning-llvm\10-llvm\hello\hello.c -o CMakeFiles\hello.dir\hello\hello.c.s

# Object files for target hello
hello_OBJECTS = \
"CMakeFiles/hello.dir/hello/hello.c.obj"

# External object files for target hello
hello_EXTERNAL_OBJECTS =

10-llvm/hello.exe: 10-llvm/CMakeFiles/hello.dir/hello/hello.c.obj
10-llvm/hello.exe: 10-llvm/CMakeFiles/hello.dir/build.make
10-llvm/hello.exe: 10-llvm/CMakeFiles/hello.dir/linklibs.rsp
10-llvm/hello.exe: 10-llvm/CMakeFiles/hello.dir/objects1.rsp
10-llvm/hello.exe: 10-llvm/CMakeFiles/hello.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\compilers\learning-llvm\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable hello.exe"
	cd /d D:\compilers\learning-llvm\cmake-build-debug\10-llvm && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\hello.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
10-llvm/CMakeFiles/hello.dir/build: 10-llvm/hello.exe
.PHONY : 10-llvm/CMakeFiles/hello.dir/build

10-llvm/CMakeFiles/hello.dir/clean:
	cd /d D:\compilers\learning-llvm\cmake-build-debug\10-llvm && $(CMAKE_COMMAND) -P CMakeFiles\hello.dir\cmake_clean.cmake
.PHONY : 10-llvm/CMakeFiles/hello.dir/clean

10-llvm/CMakeFiles/hello.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\compilers\learning-llvm D:\compilers\learning-llvm\10-llvm D:\compilers\learning-llvm\cmake-build-debug D:\compilers\learning-llvm\cmake-build-debug\10-llvm D:\compilers\learning-llvm\cmake-build-debug\10-llvm\CMakeFiles\hello.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : 10-llvm/CMakeFiles/hello.dir/depend
