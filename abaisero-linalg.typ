// linalg

#let diag = $op("diag")$
#let rank = $op("rank")$
#let trace = $op("tr")$
#let colspace = $op("col")$
#let nullspace = $op("ker")$
#let spanspace = $op("span")$

#let tr(content) = $#content^top$
#let inv(content) = $#content^(-1)$
#let pinv(content) = $#content^+$
#let it(content) = $#content^(-top)$
#let pit(content) = $#content^(+top)$
