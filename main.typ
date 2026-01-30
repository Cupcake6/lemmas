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

#let lemmas = (
  divisor_symmetry,
  divisors_of_squares,
)

#for lemma in lemmas {
  [= #lemma.name]
  [_#(lemma.statement)_]
  [== Proof]
  lemma.proof
  $space square$
  pagebreak()
}