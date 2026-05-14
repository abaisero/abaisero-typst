// todo

#let inline-todo(content) = [
  #set text(red, weight: "bold")
  ((#text(black, content)))
]
