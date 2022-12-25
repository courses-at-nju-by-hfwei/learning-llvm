cmake_minimum_required(VERSION 3.19)
project(learning_llvm)

set(CMAKE_CXX_STANDARD 14)

add_subdirectory(llvm-tutorial)

add_subdirectory(10-llvm)
add_subdirectory(11-ir-expr-control)