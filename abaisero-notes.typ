// notes

#import "@preview/ilm:1.4.1": ilm
#import "abaisero-bibliography.typ": set-bibfile
#import "abaisero-missing-references.typ": possible-missing-ref, suppressed-ref
#import "abaisero-theorems.typ": great-theorems-init

#let notes(
  ..args,
  suppress-ref-errors: false,
  bibfile: none,
  content
) = {
  let pargs = args.pos()
  let kwargs = args.named()

  if bibfile != none {
    set-bibfile(bibfile)
    kwargs.insert("bibliography", bibliography(bibfile))
  }

  set text(lang: "en")
  show: ilm.with(
    author: "Andrea Baisero",
    external-link-circle: false,
    ..pargs,
    ..kwargs,
  )
  show link: text.with(blue)
  show link: underline

  show figure.where(kind: "great-theorem-counted"): set align(left)
  show figure.where(kind: "great-theorem-uncounted"): set align(left)
  
  set figure(placement: top)

  show ref: suppressed-ref(suppress-ref-errors)

  set par.line(numbering: n => [#text(gray, [#n])])

  show: great-theorems-init

  content
}
