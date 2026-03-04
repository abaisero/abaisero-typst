#import "@preview/citegeist:0.2.1": load-bibliography

#let _bib = state("abaisero.bib", none)

#let set-bibfile(bibfile) = {
  _bib.update(load-bibliography(read(bibfile)))
}

#let cite-title(label) = context {
  _bib.get().at(str(label)).fields.title
}

#let text-cite = cite.with(form: "prose")
