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
  title: "bryne - Prototype reusable solvers for coupled multiphysics PDE models",
  authors: "Benjamin Terschanski, Robert Klöfkorn, Andreas Dedner, Julia Kowalski ",
  institutes: "Chair of Methods for Model-based Development in Computational Engineering, RWTH Aachen University, Germany",
  keywords: "FEM, Multiphysics Simulation",
  logo: circle(image("./Misc/mbd-software-logo.png"), fill: white, inset: -11pt),
)


#pop.set-theme(pop.uni-fr-middle-white-pink)
#grid(
    gutter: pop.layout-a4.spacing,
    columns: (8.5fr, 1.5fr),
    box(width: 100%)[
    #columns(3,[

              #pop.column-box(heading: "Acknowlegments")[
        #figure[#image("./Content_bryne/DFG-Logo.jpg", width: 100%)]
  ]

      #pop.column-box(heading: "Example")[

    #figure[
          #image("./Content_bryne/example-vertical.png", width: 78%)
          ]
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
            
          [Modular PDE solver framework],
          [Reusable model components],
          [Organized input structure],
          [Coupled multiphysics support],
          [Reproducible simulations],
          [Sustainable prototyping],)]

        #figure[#link("https://git.rwth-aachen.de/mbd/bryne")[#image("./Content_bryne/bryne_img.png", width: 100%)]]
        #cite(<terschanski_2025_15789249>), #cite(<TERSCHANSKI2025117962>)
      #pop.column-box(heading: "Supported FEM APIs")[
        #figure[#image("./Content_bryne/API-support.png", width: 70%)]]


      #colbreak()
     #pop.column-box(heading: "Usage")[
      Python based workflows allow for rapid prototyping of models and numerical methods.
    #figure[
          #image("./Content_bryne/docker-python.png", width: 20%)
          ]
       Get started right away with bryne using Docker Containers
  ]

      #pop.column-box()[
        #text(size: 40pt)[#bibliography("./Content_bryne/bibliography-bryne.bib")]
      ]


])
    ],
    box(width: 100%)[#pop.set-theme(pop.uni-fr-middle-pink)
        #pop.column-box(heading: "      Overview",stretch-to-next: true)[
          #figure[#link("https://mbd.pages.rwth-aachen.de/bryne/user_doc/quickstart/get_started.html")[#image("./Misc/manual.png", width: 40%)]]
          #place(center,"Documentation")
          #linebreak()
          #linebreak()
          #figure[#link("https://mbd.pages.rwth-aachen.de/bryne/user_doc/models/index.html")[#image("./Misc/example.png", width: 40%)]]
          #place(center,"Available Models")
          #linebreak()
          #linebreak()
          #figure[#link("mailto:yildiz@mbd.rwth-aachen.de")[#image("./Misc/contact.png", width: 40%)]]
          #place(center,"Contact")

          #place(bottom+center,figure[#image("./Content_bryne/bryne-qr-box.png", width: 80%)])
          ]
    ],

)

#pop.set-theme(pop.uni-fr-middle-yellow)
#pop.bottom-box()[#figure[#image("./Misc/mss-rwth.png", width: 5%,)]]
