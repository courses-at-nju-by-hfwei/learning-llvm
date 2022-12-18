//
// Created by hengxin on 12/14/22.
//

// (1) clang -S -emit-llvm factorial0.c -o factorial0-opt0.ll

// (2) clang -S -emit-llvm factorial0.c -o factorial0-opt1.ll -O1 -g0

// (3) clang -S -emit-llvm factorial0.c -o factorial0-opt3.ll -O3 -g0

// (4) opt -dot-cfg xxx.ll
// (4) opt -dot-cfg-only xxx.ll

// OR:
// clang -Xclang -disable-O0-optnone -S -emit-llvm factorial0.c -o factorial0O0.ll
// opt -S -mem2reg factorial0O0.ll -o factorial0-opt.ll

int factorial(int val);

int main(int argc, char **argv) {
  return factorial(2) * 7 == 42;
}