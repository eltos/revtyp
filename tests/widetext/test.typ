#import "/revtyp.typ": (
  revtable, revtyp, widetext-bottom, widetext-page, widetext-top,
)

#show: revtyp.with(
  journal: "PRAB",
  //wide-footnotes: true,
)

#let lorem(n) = {
  set text(fill: rgb("#777"))
  std.lorem(n)
}



#block(stroke: 1pt + gray, height: 1fr, width: 100%)
#colbreak()
#block(stroke: 1pt + gray, height: 18.7cm, width: 100%)
#lorem(19)
Here we switch to wide text due to a very long equation
//
// avoid linebreak here for paragraph continuation to work correctly!
//
#widetext-top(
  continue-paragraph-begin: true,
  continue-paragraph-end: true,
)[
  //
  // avoid linebreak here for paragraph continuation to work correctly!
  //
  following on the next line, which would otherwise not fit into a column. #lorem(20) The equation is:
  $
    x
    = sqrt((a/(a_1+a_2))^2 + (b/(b_1+b_2+b_3))^2 + (c/(c_1+c_2+c_3+c_4))^2 + (d/(d_1+d_2+d_3+d_4+d_5))^2)
  $ <eq:wide>
  #lorem(32)
  Now back to the two
  //
  // avoid linebreak here for paragraph continuation to work correctly!
  //
]

column mode.
#lorem(20)





#block(stroke: 1pt + gray, height: 12cm, width: 100%)
#lorem(50)
#block(stroke: 1pt + gray, height: 11.98cm, width: 100%)





#lorem(16)
//
Here we switch again to the wide text mode due to a very long equation
//
// avoid linebreak here for paragraph continuation to work correctly!
//
#widetext-bottom(
  // options to control if the paragraph
  // - is to be continued (justification + no first-line-indent)
  // - or a new one to start (no justification + first-line-indent)
  continue-paragraph-begin: true,
  continue-paragraph-end: true,
)[
  //
  // avoid linebreak here for paragraph continuation to work correctly!
  //
  following on the next line:
  #lorem(20)
  $
    x
    = sqrt((a/(a_1+a_2))^2 + (b/(b_1+b_2+b_3))^2 + (c/(c_1+c_2+c_3+c_4))^2 + (d/(d_1+d_2+d_3+d_4+d_5))^2)
  $ <eq:wide>

  #lorem(33)
  And then back
  //
  // avoid linebreak here for paragraph continuation to work correctly!
  //
]
//
// avoid linebreak here for paragraph continuation to work correctly!
//
to two column mode on the next page
#lorem(10)




#block(stroke: 1pt + gray, height: 1fr, width: 100%)
#colbreak()
#block(stroke: 1pt + gray, height: 22cm, width: 100%)






#lorem(20)
Here we end the paragraph.
//
// avoid linebreak here for paragraph continuation to work correctly!
//
#widetext-top(
  continue-paragraph-begin: false,
  continue-paragraph-end: false,
)[
  //
  // avoid linebreak here for paragraph continuation to work correctly!
  //
  A new paragraph starts in this wide text section.
  #lorem(20)
  $
    x
    = sqrt((a/(a_1+a_2))^2 + (b/(b_1+b_2+b_3))^2 + (c/(c_1+c_2+c_3+c_4))^2 + (d/(d_1+d_2+d_3+d_4+d_5))^2)
  $ <eq:wide>
  #lorem(20)
  We end the paragraph.
  //
  // avoid linebreak here for paragraph continuation to work correctly!
  //
]
//
// avoid linebreak here for paragraph continuation to work correctly!
//
A new paragraph back in column mode.
#lorem(20)




#block(stroke: 1pt + gray, height: 12cm, width: 100%)
#lorem(50)
#block(stroke: 1pt + gray, height: 11.98cm, width: 100%)





#lorem(20)
//
Here we end the paragraph.
//
// avoid linebreak here for paragraph continuation to work correctly!
//
#widetext-bottom(
  // options to control if the paragraph
  // - is to be continued (justification + no first-line-indent)
  // - or a new one to start (no justification + first-line-indent)
  continue-paragraph-begin: false,
  continue-paragraph-end: false,
)[
  //
  // avoid linebreak here for paragraph continuation to work correctly!
  //
  A new paragraph starts in this wide text box:
  #lorem(20)
  $
    x
    = sqrt((a/(a_1+a_2))^2 + (b/(b_1+b_2+b_3))^2 + (c/(c_1+c_2+c_3+c_4))^2 + (d/(d_1+d_2+d_3+d_4+d_5))^2)
  $ <eq:wide>

  #lorem(20)
  And then we end the paragraph.
  //
  // avoid linebreak here for paragraph continuation to work correctly!
  //
]
//
// avoid linebreak here for paragraph continuation to work correctly!
//
A new paragraph back in two column mode #lorem(20)






#block(stroke: 1pt + gray, height: 1fr, width: 100%)

#colbreak()
#block(stroke: 1pt + gray, height: 22cm, width: 100%)






#lorem(21)
We can also switch to widetext
//
// avoid linebreak here for paragraph continuation to work correctly!
//
#widetext-page(
  continue-paragraph-begin: true,
  continue-paragraph-end: true,
)[
  //
  // avoid linebreak here for paragraph continuation to work correctly!
  //
  for a full page!
  #lorem(50)
  #block(stroke: 1pt + gray, height: 21cm, width: 100%)
  #lorem(45)
  And then back to two columns on the following page,
  //
  // avoid linebreak here for paragraph continuation to work correctly!
  //
]
//
// avoid linebreak here for paragraph continuation to work correctly!
//
where we return to two column mode.
#lorem(20)


#block(stroke: 1pt + gray, height: 1fr, width: 100%)

#colbreak()
#block(stroke: 1pt + gray, height: 22cm, width: 100%)





#lorem(20)
Paragraph end.
//
// avoid linebreak here for paragraph continuation to work correctly!
//
#widetext-page(
  continue-paragraph-begin: false,
  continue-paragraph-end: false,
)[
  //
  // avoid linebreak here for paragraph continuation to work correctly!
  //
  New paragraph, wide text full page!
  #lorem(50)
  #block(stroke: 1pt + gray, height: 20.5cm, width: 100%)
  #lorem(45)
  And then back after paragraph ends.
  //
  // avoid linebreak here for paragraph continuation to work correctly!
  //
]
//
// avoid linebreak here for paragraph continuation to work correctly!
//
New paragraph on the next page
#lorem(20)

