// theorems

#import "@preview/great-theorems:0.1.2": *
#import "@preview/rich-counters:0.2.2": *

#let theorem-counter = rich-counter(
  identifier: "theorem-blocks",
  inherited_levels: 0,
)

#let definition = mathblock(
  blocktitle: "Definition",
  counter: theorem-counter,
)

#let example = mathblock(
  blocktitle: "Example",
  counter: theorem-counter,
)

#let proposition = mathblock(
  blocktitle: "Proposition",
  counter: theorem-counter,
)

#let lemma = mathblock(
  blocktitle: "Lemma",
  counter: theorem-counter,
)

#let theorem = mathblock(
  blocktitle: "Theorem",
  counter: theorem-counter,
)

#let corollary = mathblock(
  blocktitle: "Corollary",
  counter: theorem-counter,
)

#let proof = proofblock()
