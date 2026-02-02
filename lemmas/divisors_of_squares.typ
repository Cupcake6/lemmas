#import "../definitions.typ"

#let name = [Divisors of squares <lemma-divisor-of-squares>]

#let statement = [A number is a perfect square if and only if it has an odd number of divisors]

#let proof = [
  Let $D(k)$ be a function that returns the number of divisors of $k$ that are less than $sqrt(k)$.

  For example:

  $D(8)=2 space$ ($8$ is divisible by $1$, $2$, $4$ and $8$; out of those $1$ and $2$ are less than $sqrt(8)$)

  $D(3^10)=5$

  A consequence of #definitions.label_link(<lemma-divisor-summary>)[divisor symmetry lemma] is that $forall n in NN$ the number of divisors of $n$ that are less than $sqrt(n)$ is equal to the number of divisors of $n$ that are more than $sqrt(n)$. We can use this fact to express the total number of divisors of $n$ in terms of $D(n)$. There are two cases:

  + $n$ *is* a perfect square:

    In this case the total number of divisors of $n$ is equal to $2D(n)+1$, which is always an odd number. $2D(n)$ accounts for divisors that are less or more than $sqrt(n)$. We add 1 because $n$ is also divisible by $sqrt(n)$ (because $n$ is a perfect square), which was not counted by $2D(n)$. The conclusion here is that _if $n$ is a perfect square, then it has an odd number of divisors_

  + $n$ *is not* a perfect square:

    The total number of divisors is equal to $2D(n)$, which is always an even number. Here we do not add $1$ because $sqrt(n) in.not ZZ$, so $n$ *definitely* cannot be divisible by $sqrt(n)$. The contrapositive of this result is that _if $n$ has an odd number of divisors, then it is a perfect square_

  We proved the lemma both ways:

  $n$ is a perfect square $<==>$ $n$ has an odd number of divisors
]