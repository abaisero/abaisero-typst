// fancy-table

#let fancy-stroke-thick = stroke(1.5pt)
#let fancy-stroke-thin = stroke(0.8pt)

#let fancy-hline-thick = table.hline(stroke: fancy-stroke-thick)
#let fancy-hline-thin = table.hline(stroke: fancy-stroke-thin)

#let fancy-header(..args) = {
  table.header(
    fancy-hline-thick,
    ..args,
    fancy-hline-thin,
  )
}

#let fancy-table(..args) = {
  table(
    align: center,
    stroke: none,
    ..args,
    fancy-hline-thick,
  )
}
