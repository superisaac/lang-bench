#include <stdlib.h>
#include <stdio.h>

int main(int argc, char ** argv) {
  int number = atoi(argv[1]);
  int last_prime = 2;
  int prime_count = 1;
  for(int n=3;;n+=2) {
    int is_prime = 1;
    for(int d=3;d<=last_prime;d+=2) {
      if(n % d == 0) {
        is_prime = 0;
        break;
      }
    }
    if(is_prime) {
      last_prime = n;
      prime_count ++;
      if(prime_count >= number) {
        printf("%d\n", last_prime);
        return 0;
      }
    }
  }
}
