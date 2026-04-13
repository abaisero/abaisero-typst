// themes

#import "@preview/touying:0.7.0": *
#import themes.metropolis: *
#import "abaisero-theorems.typ": great-theorems-init

#let abaisero-theme(..args, body) = {
  show: metropolis-theme.with(..args)

  show: great-theorems-init
  show figure.where(kind: "great-theorem-counted"): set align(left)
  show figure.where(kind: "great-theorem-uncounted"): set align(left)

  body
}

// UCI theme

// https://brand.uci.edu/identity/colors.php
#let uci-colors = (
  "primary": (
    "gold": rgb("#fecc07"),
    "blue": rgb("#255799"),
  ),
  "secondary": (
    "darkest-blue": rgb("#002244"),
    "dark-blue": rgb("#1b3d6d"),
    "teal-blue": rgb("#0083b3"),
    "turquoise": rgb("#00b0ca"),
    "orange": rgb("#f78d2d"),
    "gold": rgb("#f0ab00"),
    "dark-gray": rgb("#555759"),
    "light-gray": rgb("#c6beb5"),
  ),
  "accent": (
    "athletics-gold": rgb("#f8cf56"),
    "light-yellow": rgb("#f7eb5f"),
    "green": rgb("#3f9c35"),
    "lime-green": rgb("#7ab800"),
    "royal-blue": rgb("#00639e"),
    "light-blue": rgb("#6aa2b8"),
    "bright-purple": rgb("#7c109a"),
    "magenta": rgb("#d462ad"),
  ),
)

#let uci-theme(..args, body) = {
  show: abaisero-theme.with(
    header-right: self => image(height: 0.6em, "/images/branding-uci/ucirvine-gold.png"),
    config-colors(
      primary: uci-colors.primary.blue,
      primary-light: uci-colors.primary.gold,
      secondary: uci-colors.primary.blue,
    ),
    ..args,
  )

  show strong: text.with(uci-colors.secondary.orange)

  body
}
