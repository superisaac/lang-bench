use std::env;

fn main() {
    let args: Vec<String> = env::args().collect();
    match args[1].parse::<i32>() {
        Ok(n) => calc_nprime(n),
        _ => println!("wrong number")
    }
}

fn calc_nprime(number: i32) {
    let mut last_prime = 2;
    let mut prime_count = 1;
    let mut n=3;

    loop {
        let mut is_prime = true;
        let mut d = 3;
        //for(d=3;d<=last_prime;d+=2) {
        loop {
            if d > last_prime {
                break;
            }
            if n % d == 0 {
                is_prime = false;
                break;
            }
            d += 2;
        }
        if is_prime {
            last_prime = n;
            prime_count += 1;
            if prime_count >= number {
                println!("{}", last_prime);
                return;
            }
        }
        n += 2;
    }    
}
