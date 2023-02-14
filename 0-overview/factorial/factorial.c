// Created by hengxin on 02/14/23.

// (1) clang .\factorial.c -o f
// (2) clang -S -emit-llvm .\factorial.c -o .\f-opt1.ll -O1 -g0

#include <stdio.h>
int factorial(int val);

int main() {
  int value = factorial(5);
  printf("%d\n", value);

  return 0;
}

// precondition: val is non-negative
int factorial(int val) {
  if (val == 0) {
    return 1;
  }

  return val * factorial(val - 1);
}