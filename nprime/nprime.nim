import os, strutils

let number = parseInt(paramStr(1))
if number <= 1:
  echo 2
  quit 0

var prime_count:int32 = 1
var last_prime:int32 = 2
#for n in countup(3, 1000000000, 2):
var n:int32 = 3
while true:
  var is_prime = true
  #for d in countup(3, last_prime, 2):
  var d:int32 = 3
  while true:
    if d >= last_prime:
      break

    if (n mod d) == 0:
      is_prime = false
      break
    d += 2

  if is_prime:
    last_prime = n
    prime_count += 1
    if prime_count >= number:
      echo last_prime
      quit 0
  n += 2

