/*
 * Template for APS PRAB styled papers
 *
 * This file is part of the revtyp template.
 * Typst universe: https://typst.app/universe/package/revtyp
 * GitHub repository: https://github.com/eltos/revtyp
 */

#import "/revtyp.typ": revtyp, revtable


#let text-config = (
  
  // Author list
  authors: (
    (name: "C. Author", at: "uni", email: "mail@example.com"),
    (name: "P. Coauthor", at: ("uni", "third"), orcid: "0000-0000-0000-0000"),
    (name: "J. Cockcroft", at: ("INP", "third")),
    (name: "C. D. Anderson", at: "INP", note: "Present address: Home Office, City, Country"),
    (names: ("N. Bohr", "A. Einstein", "M. Curie", "E. Lawrence"), at: "INP"),
    //(names: ("A. Group", "O. F. People"), at: "Single Use Primary Affiliation, Shortcut Way"),
  ),
  affiliations: (
    uni: [#link("https://ror.org/...")[Town University], City, Country],
    INP: [#link("https://ror.org/...")[Institute of Nobel Physics], Stockhold, Sweden],
    third: "The Third Institute, City, Country",
  ),
  group-by-affiliation: true,
  
  // Paper abstract
  abstract: [
    #lorem(50)
  ],
  
  // Other optional information
  date: [(Drafted #datetime.today().display("[day] [month repr:long] [year]");)],
  doi: "https://doi.org/10.1103/XXX-000",
  header: (
    //title: [PHYSICAL REVIEW ACCELERATORS AND BEAMS *00*, 000000 (0000)],
    left: (even: none, odd: none),
    right: (even: none, odd: none),
  ),
  footer: (
    title-left: none,
    title-right: none,
    center: [
      page #context counter(page).display()
      of #context counter(page).final().last()
    ],
  ),
  footnote-text: [
    Licensed under the terms of the 
    #link("https://creativecommons.org/licenses/by/4.0/")[Creative Commons Attribution 4.0 International]
    license. Further distribution of this work must maintain attribution to the authors and document title.
  ],
  //wide-footnotes: true,

  // Writing utilities
  //show-line-numbers: true,
  
)



#let test-content = [

  = Introduction

  #lorem(20)  
  Inline equations like $f_"a"(x)$ and display mode:
  
  $
    e^("i" pi) + 1 = 0
  $
  
  With a label
  
  $
    e^("i" pi) + 1 = 0 
  $ <eq:mycustomlabel>
  
  reference as @eq:mycustomlabel.
  Reference@fig:example.
  @fig:example[Figure] is referenced, @fig:example[Figs.] and @fig:rect[] too.
  Referring to @sec:test or @tab:parameters.

  Citing @example-journal-article as well as
  @example-proceedings @typst.
  #lorem(20)
  
  
  #figure(
    rect(width: 100%),
    caption: [
      A placeholder figure.
    ],
  ) <fig:example>
  
  = Section
  == Subsection <sec:test>
  #lorem(15)
  == Subsection
  #lorem(15)
  
  
  #figure(
    revtable("rll", header: top,
      [ AAA ],[ BB ],[ C ],
      [ 0   ],[ 1  ],[ 2 ],
    ),
    caption: [
      Parameters
    ]
  ) <tab:parameters>
  
  
  #figure(
    scope: "parent",
    placement: bottom, // `top`, `bottom` or `auto`
    rect(width: 100%),
    caption: [
      A column spanning figure. #lorem(25)
    ],
  ) <fig:rect>



  
  #show heading: set heading(numbering: none)
  
  = ACKNOWLEDGMENTS
  
  We thank ...
  
  
  #bibliography("references.bib")


  
]





#show: revtyp.with(
  journal: "PRAB",
  title: [Paper template in ABS PRAB style],
  ..text-config,
)
#test-content


