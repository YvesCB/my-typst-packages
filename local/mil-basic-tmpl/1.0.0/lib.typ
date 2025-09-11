#let conf(
  doc_title: "",
  classification: "INTERN",
  classification_attach: "INTERN",
  doc,
) = {
  set page(
    paper: "a4",
    margin: (top: 8em, bottom: 6em),
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
        FUB - FU Br 41]),
    ),
    header-ascent: 20%,
    footer: context [
      #line(length: 100%)
      #grid(
        columns: (1fr, 1fr),
        align: (left, right),
        text(size: 8pt, doc_title), text(size: 8pt, counter(page).display("1/1", both: true)),
      ),
    ],
  )

  set text(
    font: "Liberation Sans",
  )

  set heading(
    numbering: "1.1",
  )

  align(right, [*#classification* \ *Beilage(n) #classification_attach*])

  doc
}
