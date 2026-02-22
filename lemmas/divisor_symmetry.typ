#let name = [Divisor symmetry <lemma-divisor-symmetry>]

#let statement = [$forall n in NN$ the number of divisors of $n$ that are less than $x in RR, space x>0$ is equal to the number of divisors of $n$ that are more than $n/x$]

#let proof = [
  Let $n in NN$ and $space x in RR, space x>0$.

  $A={a in NN: space a<x, space a divides n}$

  $B={b in NN: space b>n/x, space b divides n}$

  Now let's establish a bijection between those two sets:

  Define $f: A -> B$ by $f(a)=n/a$.

  This mapping works because $n/a divides n$ and $a < x ==> n/a > n/x$, thus $n/a in B$.

  Define $f^(-1): B -> A$ by $f^(-1)(b)=n/b$.

  Similarly, $n/b divides n$ and $b > n/x ==> n/b < x$, which implies $n/b in A$.

  $ forall a in A, space f^(-1)(f(a)) = n/(n/a) = a $

  #align(center)[and]

  $ forall b in B, space f(f^(-1)(b)) = n/(n/b) = b $

  $==> |A| = |B|$
]

#let notes = [
  The lemma can be modified to get that _$forall n in NN$ the number of divisors that are less or equal to $x in RR, space x > 0$ is equal to the number of divisors of $n$ that are more or equal to $n/x$_
]