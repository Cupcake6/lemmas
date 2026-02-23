#let name = [Common divisor invariant <lemma-common-divisor-invariant>]

#let statement = [If $a eq.triple r space (mod b)$, then the set of common divisors of $a$ and $b$ is equal to the set of common divisors of $r$ and $b$]

#let proof = [
  Let $a, r, b in ZZ, space a eq.triple r space (mod b)$

  $A = {p in ZZ: space p divides a and p divides b}$

  $B = {q in ZZ: space q divides r and q divides b}$

  Because $a eq.triple r space (mod b)$, by definition, there exists $k in ZZ$, such that $a - r = b k$.

  For all $p in A$, there exist $n_1,m_1 in ZZ$, such that $a = p n_1, space b = p m_1$. By substituting, we get $p n_1 - r = p m_1 k ==> r = p(n_1 - m_1 k)$. Therefore $p | r$. This means $p$ divides both $r$ and $b$, thus $p in B$.

  Similarly, for all $q in B$, there exist $n_2,m_2 in ZZ$, such that $r = q n_2, space b = q m_2$. By substituting, we get $a - q n_2 = q m_2 k ==> a = q(m_2 k + n_2)$. Therefore $q | a$. This means $q$ divides both $a$ and $b$, thus $q in A$.

  All elements of $A$ are in $B$, and all elements of $B$ are in $A$. Therefore $A = B$.
]

#let notes = [
  A commonly used consequence of this result is that _if $a eq.triple r space (mod b)$, then $gcd(a,b)=gcd(r,b)$_. If the sets are the equal, then the largest element of them both is the same.
]