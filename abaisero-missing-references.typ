// missing-references

#import "@preview/citegeist:0.2.0": load-bibliography

#let all-bib-entries() = {
  let bib-file = {
    let all-bib = query(bibliography)
    if all-bib.len() > 0 {
      all-bib.at(0).sources.at(0)
    } else {
      none
    }
  }
  if bib-file == none {
    (:)
  } else {
    load-bibliography(read(bib-file))
  }
}

#let possible-missing-ref(it) = {
  if str(it.target) in all-bib-entries() or it.element != none {
    it
  } else {
    text(fill: red)[\<Target not found: #emph(str(it.target))\>]
  }
}

#let suppressed-ref(suppress-ref-errors) = it => {
  if suppress-ref-errors {
    possible-missing-ref(it)
  } else {
    it
  }
}
