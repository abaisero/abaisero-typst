// diagrams

#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge, hide
#import "abaisero-functions.typ": ternary

#let show-or-hide(condition, content) = if condition { content } else { hide(content) }

#let merge-strokes(x, y) = {
  if x == none { return none }
  if x == auto { return stroke(y) }

  x = stroke(x)
  y = stroke(y)

  stroke(
    paint: ternary(x.paint == auto, y.paint, x.paint),
    thickness: ternary(x.thickness == auto, y.thickness, x.thickness),
    cap: ternary(x.cap == auto, y.cap, x.cap),
    join: ternary(x.join == auto, y.join, x.join),
    dash: ternary(x.dash == auto, y.dash, x.dash),
    miter-limit: ternary(x.miter-limit == auto, y.miter-limit, x.miter-limit),
  )
}

#let stroke-constructor = stroke

#let rv-node(latent: false, observed: false, stroke: auto, fill: auto, ..args) = {
  let latent-stroke = stroke-constructor(paint: black, dash: "dashed")
  let non-latent-stroke = stroke-constructor(paint: black)
  let default-stroke = ternary(latent, latent-stroke, non-latent-stroke)
  stroke = merge-strokes(stroke, default-stroke)

  let observed-fill = luma(220)
  let unobserved-fill = white
  let default-fill = ternary(observed, observed-fill, unobserved-fill)
  fill = ternary(fill == auto, default-fill, fill)

  node(
    shape: circle,
    fill: fill,
    stroke: stroke,
    // radius: 1.2em,
    ..args
  )
}

#let exogenous-rv-node(stroke: auto, ..args) = {
  let default-stroke = (dash: "dashed")
  stroke = merge-strokes(stroke, default-stroke)

  rv-node(stroke: stroke, ..args)
}

#let endogenous-rv-node = rv-node

#let rv-edge-default-stroke(known) = {
  let stroke = (thickness: 1.5pt)
  if known {
    stroke.paint = black
  } else {
    stroke.paint = gray
    stroke.dash = "dashed"
  }
  return stroke
}

#let rv-edge(bidirected: false, directed: true, known: true, stroke: auto, ..args) = {
  let marks = ternary(bidirected, "<|-|>", ternary(directed, "-|>", "-"))
  let default-stroke = rv-edge-default-stroke(known)
  stroke = merge-strokes(stroke, default-stroke)

  edge(
    marks: marks,
    mark-scale: 75%,
    ..args,
    stroke: stroke,
  )
}

#let rv-plate = rv-node.with(
  shape: rect,
  stroke: black,
  corner-radius: 5pt,
  inset: 8pt,
)
