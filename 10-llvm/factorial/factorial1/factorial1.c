//
// Created by hengxin on 12/14/22.
//

int factorial(int val);

int main(int argc, char **argv) {
  return factorial(2) * 7 == 42;
}

// precondition: val is non-negative
int factorial(int val) {
  if (val == 0) {
    return 1;
  }

  return val * factorial(val - 1);
}