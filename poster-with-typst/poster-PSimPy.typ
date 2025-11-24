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
  title: "PSimPy - Predictive and probabilistic simulation with Python",
  authors: "Hu Zhao, Anil Yildiz, Nazanin Bagherinejad, Julia Kowalski ",
  institutes: "Chair of Methods for Model-based Development in Computational Engineering, RWTH Aachen University, Germany",
  keywords: "Gaussian Process, Multiphysics Simulation",
  logo: circle(image("./Misc/mbd-software-logo.png"), fill: white, inset: -11pt),
)

#pop.set-theme(pop.uni-fr-middle-white-pink)
#grid(
    gutter: pop.layout-a4.spacing,
    columns: (8.5fr, 1.5fr),
    box(width: 100%)[
    #columns(3,[

              #pop.column-box(heading: "Acknowlegments")[
                THIS POSTER IS STILL UNDER CONSTRUCTION!!
                !
                !
                !
                !
                !
                !
                !
                !
  ]

      #pop.column-box(heading: "Main Structure")[
        #figure[#image("./Content_pysimpy/structure.jpg", width: 100%)]

  ]

              #pop.column-box(heading: "Acknowlegments")[

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
            
          [Gaussian process–based uncertainty framework],
          [Fast emulation of expensive simulators],
          [Supports global sensitivity analysis],
          [Probabilistic uncertainty quantification],
          [Parameter calibration and inference],
          [Scalar and multi-output GP emulators],)]

        #figure[#link("https://git.rwth-aachen.de/mbd/shire#user-content-how-to-use-shire")[#image("./Content_pysimpy/pysimpy-Logo.png", width: 100%)]]
        #cite(<zhao_et_al_2023>)
      #pop.column-box(heading: "Research Studies Using PSimpy")[
        #cite(<kumar_et_al_2024>),#cite(<tillmann_et_al_2024>),#cite(<correa_et_al_2024>)
        ]


      #colbreak()


      #pop.column-box()[
        #text(size: 40pt)[#bibliography("./Content_pysimpy/bibliography-pysimpy.bib")]
      ]


])
    ],
    box(width: 100%)[#pop.set-theme(pop.uni-fr-middle-pink)
        #pop.column-box(heading: "      Overview",stretch-to-next: true)[
          #figure[#link("https://mbd.pages.rwth-aachen.de/psimpy/")[#image("./Misc/manual.png", width: 40%)]]
          #place(center,"Documentation")
          #linebreak()
          #linebreak()
          #figure[#link("https://mbd.pages.rwth-aachen.de/psimpy/examples.html")[#image("./Misc/example.png", width: 40%)]]
          #place(center,"Examples")
          #linebreak()
          #linebreak()
          #figure[#link("mailto:yildiz@mbd.rwth-aachen.de")[#image("./Misc/contact.png", width: 40%)]]
          #place(center,"Contact")

          #place(bottom+center,figure[#image("./Content_pysimpy/qr-pysimpy.png", width: 70%)])
          ]
    ],

)

#pop.set-theme(pop.uni-fr-middle-yellow)
#pop.bottom-box()[#figure[#image("./Misc/mss-rwth.png", width: 5%,)]]
