//
// Created by hengxin on 12/14/22.
//

int factorial(int val);

int main(int argc, char **argv) {
  return factorial(2) * 7 == 42;
}

// precondition: val is non-negative
int factorial(int val) {
  int temp = 1;

  for (int i = 2; i <= val; i++) {
    temp *= i;
  }

  return temp;
}