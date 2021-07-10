cmake_minimum_required(VERSION 3.19)
project(learning_llvm)

set(CMAKE_CXX_STANDARD 14)

add_executable(lexer llvm-tutorial/lexer.cpp)
add_executable(ast llvm-tutorial/ast.cpp)
add_executable(parser llvm-tutorial/parser.cpp)
