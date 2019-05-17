package main

import (
	"os"
	"fmt"
	"strconv"
)

func main() {
	v, err := strconv.ParseInt(os.Args[1], 10, 64)
	if err != nil {
		panic(err)
	}
	number := int(v)

	last_prime := 2
	prime_count := 1

	for n :=3;; n+=2 {
		is_prime := true
		for d := 3; d<=last_prime; d+=2 {
			if n % d == 0 {
				is_prime = false
				break
			}
		}
		if is_prime {
			last_prime = n
			prime_count++
			if prime_count >= number {
				fmt.Printf("%d\n", last_prime)
				return
			}
		}
	}
}
