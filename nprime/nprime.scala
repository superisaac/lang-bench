object Main extends App {
  def primes(n: Int) = {
    var ps = List(2)
    (Iterator(2) ++ Iterator.from(3, 2).filter { x =>
      val isPrime = ps.forall(x % _ > 0)
      if (isPrime) ps = ps :+ x
      isPrime
    }).drop(n-1).take(1).toList.head
  }
  println(primes(args.head.toInt))
}
