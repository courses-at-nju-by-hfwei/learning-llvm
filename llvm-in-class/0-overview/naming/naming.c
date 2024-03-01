// Created by hengxin on 02/14/23.

// comment out #include <stdio.h> before executing the following two commands
// ast: abstract syntax tree
// (1) clang -Xclang -ast-dump naming.c
  // clang naming.c -o naming
  // clang -cc1 -ast-view naming.c (for graphviz)
// (2) clang -fsyntax-only -Xclang -dump-tokens naming.c

// #include <stdio.h>

// The code with really bad names for variables.
int main() {
  int two;
  int three;
  scanf("%d%d", &two, &three);
  int six = two + three;

  if (six > 4) {
    six = 5;
  } else {
    six = 3;
  }

  return 0;
}