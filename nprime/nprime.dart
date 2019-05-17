
main(List<String> args) {
  var number = int.parse(args[0]);
  if(number <= 1) {
    print(2);
    return;
  }
  var last_prime = 2;
  var prime_count = 1;
  
  for(int n=3;;n+=2) {
    var is_prime = true;
    for(int d=3;d<=last_prime;d+=2) {
      if(n % d == 0) {
        is_prime = false;
        break;
      }
    }
    if(is_prime) {
      last_prime = n;
      prime_count +=1;
      if(prime_count >= number) {
        print(last_prime);
        return;
      }
    }
  }
}
