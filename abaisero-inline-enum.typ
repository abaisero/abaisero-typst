// inline-enum

#let inline-enum-numbering = state("inline-enum-numbering", "a)")

#let inline-enum(..items) = context {
  let inline-numbering = inline-enum-numbering.get()

  for (i, item) in items.pos().enumerate(start: 1) [
    #numbering(inline-numbering, i)
    #item
  ]
}
