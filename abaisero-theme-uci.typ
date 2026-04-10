// themes

#let uci-primary-gold = rgb("#fecc07")
#let uci-primary-blue = rgb("#255799")

#let uci-secondary-gold = rgb("#f0ab00")
#let uci-secondary-orange = rgb("#f78d2d")

#import "@preview/touying:0.7.0": *
#import themes.metropolis: *

#let uci-theme = metropolis-theme.with(
  header-right: self => image(height: 0.6em, "branding-uci/ucirvine-gold.png"),
  config-colors(
    primary: uci-primary-blue,
    primary-light: uci-primary-gold,
    secondary: uci-primary-blue,
  ),
)
