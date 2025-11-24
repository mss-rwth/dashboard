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
  logo: circle(image("./Misc/mbd-software-logo.png"), fill: white, inset: -11pt),
)

#pop.set-theme(pop.uni-fr-middle-white-pink)
#grid(
    gutter: pop.layout-a4.spacing,
    columns: (8.5fr, 1.5fr),
    box(width: 100%)[
    #columns(3,[
      #pop.column-box(heading: "Schematic Flow Chart")[
        #figure[#image("./Content_Shire/SHIRE-Flowchart.jpg", width: 100%)]]

        #pop.column-box(heading: "Acknowlegments")[
        #figure[#image("./Content_Shire/acknowldegments-SHIRE.png", width: 100%)]
  ]




      #colbreak()

//      #pop.column-box(heading: "Summary" )[

        //#text(size: 60pt, weight: "bold")[#list(
          //#list(
          //[Landslide Susceptibility],
          //[Hazard Mapping],
          //[Random Forest Classifier],
          //[Dataset Generation],
          //[Pre-processing],)]
            #pop.column-box(heading: "Features" )[

        //#text(size: 60pt, weight: "bold")[#list(
          #list(
          [handles geospatial data],
          [probabilistic susceptibility mapping],
          [shallow landslides],
          [dataset management],
          [One-hot or ordinal encoding],
          [Supports parallel prediction],)]

        #figure[#link("https://git.rwth-aachen.de/mbd/shire#user-content-how-to-use-shire")[#image("./Content_SHIRE/SHIRE_logo.png", width: 100%)]]
        #cite(<edrich2024modular>), #cite(<Edrich:1006507>)

              #list(
          [probabilistic landslide susceptibility assessment],
          [Geo-environmental hazard modeling],
          [machine learning + geospatial preprocessing],
          [training, prediction, map visualization],
          [Reproducible runs with saved settings],)
      #colbreak()
      #pop.column-box(heading: "Framework")[
        Available as plain code and GUI version.

    #figure[
          #image("./Misc/python.png", width: 20%)
          ]
        Python-based modular framework can be complemented with individual modules.  
  ]

      #pop.column-box()[
        #text(size: 40pt)[#bibliography("./Content_Shire/bibliography-SHIRE.bib")]
      ]


])
    ],
    box(width: 100%)[#pop.set-theme(pop.uni-fr-middle-pink)
        #pop.column-box(heading: "      Overview",stretch-to-next: true)[
          #figure[#link("https://git.rwth-aachen.de/mbd/shire/-/blob/main/docs/user_manual.pdf?ref_type=heads")[#image("manual.png", width: 40%)]]
          #place(center,"User Manual")
          #linebreak()
          #linebreak()
          #figure[#link("https://git.rwth-aachen.de/mbd/shire/-/tree/main/examples?ref_type=heads")[#image("example.png", width: 40%)]]
          #place(center,"Example")
          #linebreak()
          #linebreak()
          #figure[#link("mailto:yildiz@mbd.rwth-aachen.de")[#image("contact.png", width: 40%)]]
          #place(center,"Contact")

          #place(bottom+center,figure[#image("./Content_Shire/gitlab-qr-box.png", width: 80%)])
          ]
    ],

)

#pop.set-theme(pop.uni-fr-middle-yellow)
#pop.bottom-box()[#figure[#image("mss-rwth.png", width: 5%,)]]
