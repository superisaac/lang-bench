#include <stdlib.h>
#include <iostream>

int main(int argc, char **argv) {
  int number = atoi(argv[1]);
  if(number <= 1) {
    std::cout << 2 << std::endl;
    return 0;
  }
  int last_prime = 2;
  int prime_count = 1;
  for(int n=3;;n+=2) {
    bool is_prime = true;
    for(int d=3;d<=last_prime;d+=2) {
      if(n % d == 0) {
        is_prime = false;
        break;
      }
    }
    if(is_prime) {
      last_prime = n;
      prime_count ++;
      if(prime_count >= number) {
        std::cout << last_prime << std::endl;
        return 0;
      }
    }
  }
}
