
public class nprime {
  public static void main(String[] args) {
    int number = Integer.parseInt(args[0]);
    if(number <= 1) {
      System.out.println(2);
      return;
    }
    int last_prime = 2;
    int prime_count = 1;
    for(int n=3;;n+=2) {
      boolean is_prime = true;
      for(int d=3;d<=last_prime;d+=2) {
        if(n % d == 0) {
          is_prime = false;
          break;          
        }
      }
      if(is_prime) {
        last_prime = n;
        prime_count++;
        if(prime_count >= number) {
          System.out.println(last_prime);
          return;
        }
      }
    }
  }
}
