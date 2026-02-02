#import "../definitions.typ"

#let name = [Polynomial difference]

#let statement = [If $P(x)$ is a polynomial with whole coefficients, then $forall a, b in ZZ, space (a-b) divides (P(a)-P(b))$]

#let proof = [
  Let $P(x)=p_0+p_1x+p_2x^2+p_3x^3+...+p_(n-1)x^(n-1)+p_(n)x^n$.
  
  $p_k in ZZ$ for all $k in ZZ, space 0<=k<=n$.

  Let $a, b in ZZ$.
  
  $P(a)-P(b)=p_0-p_0+p_1a-p_1b+p_2a^2-p_2b^2+...+p_(n)a^n-p_(n)b^n=$

  $=p_1(a-b)+p_2(a^2-b^2)+p_3(a^3-b^3)+...+p_(n)(a^n-b^n)$.

  Each of these terms is divisible by $a-b$, because you can factor the difference $a^k-b^k$ as $(a-b)(a^(k-1)+a^(k-2)b+a^(k-3)b^(2)+...+a b^(k-2)+b^(k-1))$.

  Because every term in the final sum is divisible by $a-b$, the whole sum is divisible by $a-b$, thus giving that $(a-b) divides (P(a)-P(b))$.
]