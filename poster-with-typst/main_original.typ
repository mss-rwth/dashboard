//#import "@preview/peace-of-posters:0.5.6" as pop
#import "peace-of-posters-0.5.6/lib.typ" as pop
#set page("a0", margin: 1cm, flipped: true)
#pop.set-poster-layout(pop.layout-a0)
#pop.set-theme(pop.uni-fr)
#set text(size: pop.layout-a0.at("body-size"))
#let box-spacing = 1.2em
#set columns(gutter: box-spacing)
#set block(spacing: box-spacing)
#pop.update-poster-layout(spacing: box-spacing)

//#page(flipped: true)[ // rotates the whole page

#pop.title-box(
  "SHIRE (Susceptibility Hazard mappIng fRamEwork)",
  authors: "Ann-Kathrin Edrich, Anil Yildiz, Julia Kowalski",
  institutes: "Chair of Methods for Model-based Development in Computational Engineering, RWTH Aachen University, Germany",
  keywords: "Landslides, Random Forest",
  logo: circle(image("mbd-logo-circle.png"), fill: white, inset: -11pt),
)


#columns(3,[
  #pop.column-box(heading: "Schematic Flow Chart")[
  

    #figure[
      #image("SHIRE-Flowchart.jpg", width: 80%)
    ]
  ]

  // These properties will be given to the function which is responsible for creating the heading
  #let hba = pop.uni-fr.heading-box-args
  #hba.insert("stroke", (paint: gradient.linear(green, red, blue), thickness: 10pt))

  // and these are for the body.
  #let bba = pop.uni-fr.body-box-args
  #bba.insert("inset", 30pt)
  #bba.insert("stroke", (paint: gradient.linear(green, red, blue), thickness: 10pt))

  #colbreak()
SHIRE (Susceptibility Hazard mappIng fRamEwork) is a tool to facilitate and streamline landslide susceptibility and hazard mapping using a Random Forest classifier. It provides support for repetitive steps in landslide susceptibility and hazard mapping such as input dataset generation including data pre-processing. It is a Python-based modular framework that can be complemented with individual modules necessary for answering individual mapping challenges due to the open-access nature of the code.
  #pop.column-box(
    heading: "Biological Information",
    heading-box-args: hba,
    body-box-args: bba,
  )[
    #table(
      columns: (auto, 1fr),
      inset: 0.5cm,
      stroke: (x, y) => if y >= 0 {(bottom: 0.2pt + black)},
      [Domain],[Eukaryota],
      [Kingdom],[Animalia],
      [Phylum],[Chordata],
      [Class],[Aves],
      [Clade],[Columbimorphae],
      [Order],[Columbiformes],
      [Family],[Columbidae],
      [Type genus],[Columba],
    )

    This box is styled differently compared to the others.
    To make such changes persistent across the whole poster, we can use these functions:
    ```typst
    #pop.update-poster-layout(...)
    #pop.update-theme()
    ```
  ]

  #colbreak()

  #pop.column-box(heading: "Peace of Posters Documentation")[
    You can find more information on the documentation site under
    #text(fill: red)[
      #link("https://jonaspleyer.github.io/peace-of-posters/")[
        jonaspleyer.github.io/peace-of-posters/
      ]
    ].

    #figure(caption: [
      The poster from the thumbnail can be viewed at the documentation website as well.
    ])[
      #link("https://jonaspleyer.github.io/peace-of-posters/")[
        #image("thumbnail.png", width: 50%)
      ]
    ]
  ]


])

#pop.bottom-box()[
MSS RWTH Aachen #link("https://www.mss.rwth-aachen.de/cms/~eiqx/mss/?lidx=1")
]

//]