
function main() {
  var number = parseInt(process.argv[2])
  if(number <= 1) {
    console.log(2);
    process.exit();
  }
  var last_prime = 2
  var prime_count = 1

  for(let n=3;;n+=2) {
    let is_prime = true;
    for(let d = 3; d<=last_prime;d+=2) {
      if(n % d == 0) {
        is_prime = false;
        break;
      }
    }
    if(is_prime) {
      last_prime = n;
      prime_count++;
      if(prime_count >= number) {
        console.log(last_prime);
        process.exit();
      }
    }
  }  
}

main()
