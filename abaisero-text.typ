// text

#let hrule = line(length: 100%)

#let text-bold = text.with(weight: "bold")
#let text-small = text.with(size: 0.8em)
#let text-tiny = text.with(size: 0.6em)

#let plain-heading(content) = {
  set heading(numbering: none)
  content
}

#let inline-heading(content) = {
  show heading: it => text-bold(it.body)
  content
}

#let heading-separator = $::$

#let highlight-info = highlight.with(fill: blue.lighten(50%))
#let highlight-important = highlight.with(fill: purple.lighten(50%))
#let highlight-warning = highlight.with(fill: orange.lighten(50%))
#let highlight-error = highlight.with(fill: red.lighten(50%))
#let highlight-expected = highlight.with(fill: green.lighten(50%))

#let text-cite = cite.with(form: "prose")

#let title-ref(..args) = {
  show ref: it => quote(it.element.body)
  ref(..args)
}

