// layout

#let hspace(left: false, right: false, both: false, ..items) = {
  let left = left or both
  let right = right or both

  for (i, item) in items.pos().enumerate() {
    if (i > 0) or left {
      h(1fr)
    }

    item
  }

  if (right) {
    h(1fr)
  }
}

#let vspace(top: false, bottom: false, both: false, ..items) = {
  let top = top or both
  let bottom = bottom or both

  for (i, item) in items.pos().enumerate() {
    if (i > 0) or top {
      v(1fr)
    }

    item
  }

  if (bottom) {
    v(1fr)
  }
}
