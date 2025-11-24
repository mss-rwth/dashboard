//#import "@preview/peace-of-posters:0.5.6" as pop
#import "peace-of-posters-0.5.6/lib.typ" as pop // import local modified library
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
  title: "Susceptibility Hazard mappIng fRamEwork - SHIRE",
  authors: "Ann-Kathrin Edrich, Anil Yildiz, Julia Kowalski",
  institutes: "Chair of Methods for Model-based Development in Computational Engineering, RWTH Aachen University, Germany",
  keywords: "Landslides, Random Forest",
  logo: circle(image("mbd-software-logo.png"), fill: white, inset: -11pt),
)

#pop.set-theme(pop.uni-fr-middle-white-pink)

#columns(3,[

//  #pop.column-box(heading: "Features")[
//#text(size: 60pt, weight: "bold")[#list(
//  [Plain version and GUI Available],
//  [Calculate],
//  [Construct],
//  [Data Loading],)]

//  ]


  #pop.column-box(heading: "Schematic Flow Chart")[
  

    #figure[
      #image("SHIRE-Flowchart.jpg", width: 80%)
    ]
  ]

  #pop.column-box(heading: "Example Output")[
  

    #figure[
      #image("output.png", width: 100%)
    ]
  ]


  #colbreak()


  #pop.column-box(heading: "Summary" )[

#text(size: 60pt, weight: "bold")[#list(
  [Landslide Susceptibility],
  [Hazard Mapping],
  [Random Forest Classifier],
  [Dataset Generation],
  [Pre-processing],)]]
#figure[
      #image("SHIRE_logo.png", width: 100%)
      ]


  #colbreak()

  #pop.column-box(heading: "Open Source")[
#figure[
      #image("gitlab-qr.png", width: 40%)
      ]
  ]

  #pop.column-box(heading: "User Manual")[
#figure[
      #image("manual.png", width: 40%)
      ]


  ]


])

#pop.set-theme(pop.uni-fr-bottom)

//#pop.bottom-box(
// logo: circle(image("mss-rwth.png"), fill: white, inset: -11pt),
//)[
//#columns(3,[

  
//  Column 1
 // #colbreak()
 // Column 2
 // #colbreak()
//  Column 3

//])
//]

//]

//#pop.bottom-box2()[
//]


//]

//#pop.middle-box()[hehe]
