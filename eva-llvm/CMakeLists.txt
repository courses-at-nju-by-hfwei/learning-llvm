# This file handles building each task as sub-project.
#
# Each task becomes an independent project in which you can experiment.
#
# Tasks are added as separate sub-projects so as compilation errors in
# one task don't affect another task.

cmake_minimum_required(VERSION 3.7)

project(eva-llvm CXX)

set(CMAKE_CXX_STANDARD)

find_package(LLVM REQUIRED CONFIG)

include_directories(${LLVM_INCLUDE_DIRS})
add_definitions(${LLVM_DEFINITIONS})

add_executable(EvalLLVM EvalLLVM.cpp)

target_link_libraries(EvalLLVM ${llvm_libs})