#let name = [LCM divides every common multiple]

#let statement = [Every common multiple of $a$ and $b$ is divisible by $lcm(a,b)$]

#let proof = [
  Let $m = lcm(a, b)$.

  For contradiction, suppose $exists m_0 in ZZ : a divides m_0 thick and thick b divides m_0 thick and thick m divides.not m_0$.

  This would mean that $exists n in ZZ, space exists r in ZZ :  0<r<m$ such that $m_0 = n m + r$. You can rearrange this equality to get $r = m_0 - n m$.

  $ a divides m_0 thick and thick a divides n m space ==> space a divides (m_o - n m) space ==> a | r $

  $ b divides m_0 thick and thick b divides n m space ==> space b divides (m_o - n m) space ==> b | r $

  Notice an impossibility: $r$ is a common multiple of $a$ and $b$, but it is also smaller than $m$, or, in other words, _smaller than the smallest common multiple_.

  By contradiction, we have proved the opposite: all common multiples of $a$ and $b$ are divisible by $lcm(a, b)$.
]

#let notes