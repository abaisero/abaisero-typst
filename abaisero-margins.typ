// margins

#let margin(left-content, content, right-content) = [
  #let content-pad-width = 0.5em
  #let line-width = 2pt
  #let margin-pad-width = 0.1em
  #let margin-width = 4.5em
  #let pad-width = margin-pad-width + line-width + content-pad-width

  #let content-args = (stroke: (:), outset: (:))
  #if left-content != none {
    content-args.stroke.left = line-width
    content-args.outset.left = content-pad-width
  }
  #if right-content != none {
    content-args.stroke.right = line-width
    content-args.outset.right = content-pad-width
  }

  #layout(size => [
    #if left-content != none [
      #place(
        dx: - margin-width - pad-width,
        block(
          width: margin-width,
          align(right, left-content),
        ),
      )
    ]
    #if right-content != none [
      #place(
        dx: size.width + pad-width,
        block(
          width: margin-width,
          right-content,
        ),
      )
    ]
    #block(
      ..content-args,
      content,
    )
  ])
]

#let left-margin(m, content) = margin(m, content, none)
#let right-margin(m, content) = margin(none, content, m)
