import sys

def main():
    number = int(sys.argv[1])
    if number <= 1:
        print(2)
        return
    last_prime = 2
    prime_count = 1

    n = 3
    while True:
        is_prime = True
        for d in range(3, last_prime, 2):
            if n % d == 0:
                is_prime = False
                break
        if is_prime:
            last_prime = n
            prime_count += 1
            if prime_count >= number:
                print(last_prime)
                return
        n += 2

if __name__ == '__main__':
    main()
