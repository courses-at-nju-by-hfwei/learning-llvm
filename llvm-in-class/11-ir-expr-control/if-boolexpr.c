//
// Created by hfwei on 2022/12/25.
//

#include <stdio.h>

int main() {
  int x, y;
  scanf("%d%d", &x, &y);

  if (x < 100 || x > 200 && x != y) {
    x = 0;
  }

  return 0;
}