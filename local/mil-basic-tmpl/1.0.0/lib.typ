#let std-margin = 4em

#let conf(
  doc_title: "",
  classification: "INTERN",
  classification_attach: "INTERN",
  zugehoerigkeit: [EKF Abt 52 \ Aw Zug],
  ort: "Ort",
  author: "Vorname Name",
  funktion: "CI",
  doc,
) = {
  set page(
    paper: "a4",
    margin: (top: 8em, bottom: 6em, left: std-margin + 5em),
    header: grid(
      columns: (1fr, 1fr),
      align: (left, left),
      box(inset: (x: -3.4em, y: 0em), image(
        "./Logo_der_Schweizerischen_Eidgenossenschaft.png",
        width: auto,
        height: 5em,
      )),
      text(size: 8pt, luma(100), [Eidgenössisches Department für Verteidigung \
        Bevölkerungsschutz und Sport VBS \ \
        *Schweizer Armee* \
        Kdo Cyber]),
    ),
    header-ascent: 20%,
    footer: context {
      box(inset: (x: -std-margin))[
        #line(length: 100%)
        #grid(
          columns: (1fr, 1fr),
          align: (left, right),
          text(size: 8pt, doc_title), text(size: 8pt, counter(page).display("1/1", both: true)),
        )
      ]
    },
  )


  set text(
    font: "Liberation Sans",
    size: 11pt,
  )

  set heading(
    numbering: "1.1",
  )

  show heading: it => context {
    set text(size: 11pt)
    set block(inset: (x: -std-margin))
    grid(
      columns: (std-margin, auto),
      align: (left, left),
      counter(heading).display("1.1"), it.body,
    )
  }

  set enum(
    numbering: "1.a.",
    indent: 0.5em,
    body-indent: 0.6em,
  )

  set list(
    indent: 0.5em,
    body-indent: 1em,
  )

  align(right, [*#classification* \ *Beilage(n) #classification_attach*])

  block(inset: (left: -std-margin), text(size: 13pt, weight: "bold", doc_title))

  doc

  block(zugehoerigkeit)

  block()[#author \ #funktion]
}
