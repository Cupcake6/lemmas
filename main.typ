#import "definitions.typ"

#set page(
  fill: definitions.background_color,
  width: 12cm,
  height: auto,
)

#set text(
  fill: definitions.text_color,
  size: 8pt,
)

#import "lemmas/divisor_symmetry.typ"
#import "lemmas/divisors_of_squares.typ"
#import "lemmas/polynomial_difference.typ"
#import "lemmas/common_divisor_invariant.typ"

#let lemmas = (
  divisor_symmetry,
  divisors_of_squares,
  polynomial_difference,
  common_divisor_invariant,
)

#for (i, lemma) in lemmas.enumerate() {
  [= #lemma.name]
  [_#(lemma.statement)_]

  [== Proof]
  lemma.proof
  $space square$

  if lemma.notes != none {
    [== Notes]
    lemma.notes
  }

  if i < lemmas.len() - 1 { pagebreak() }
}
