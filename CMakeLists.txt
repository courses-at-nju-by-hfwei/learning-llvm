cmake_minimum_required(VERSION 3.19)
project(learning_llvm)

set(CMAKE_CXX_STANDARD 14)

add_executable(learning_llvm
        llvm-tutorial/lexer.cpp)
