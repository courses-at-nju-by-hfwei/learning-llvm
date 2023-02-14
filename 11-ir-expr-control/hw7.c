// code for hw7

#include <stdio.h>

int main() {
  int x = 0;
  scanf("%d", &x);

  while (x > 1) {
    if (x < 3) {
      x = 5;
    } else if (x < 5) {
      x = 7;
    }
  }
}