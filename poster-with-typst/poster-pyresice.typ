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
  title: "pyresice - Python Package for Reusability-Targeted Sea Ice Databases",
  authors: "Benjamin Terschanski, Robert Klöfkorn, Andreas Dedner, Julia Kowalski ",
  institutes: "Chair of Methods for Model-based Development in Computational Engineering, RWTH Aachen University, Germany",
  keywords: "Database, Sea Ice Cores",
  logo: circle(image("./Misc/mbd-software-logo.png"), fill: white, inset: -11pt),
)

#pop.set-theme(pop.uni-fr-middle-white-pink)
#grid(
    gutter: pop.layout-a4.spacing,
    columns: (8.5fr, 1.5fr),
    box(width: 100%)[
    #columns(3,[

              #pop.column-box(heading: "Overview")[
          #list(
            
          [Python package accompanying the RESICE (Reusability-targeted Enriched Sea Ice Core Database) database],
          [Enables reuse of heterogeneous sea ice core data],
          [validation of physics-based models],
          [Coupled multiphysics support],
          [training of data-driven algorithms],
  )]
   
  

      #pop.column-box(heading: "Sea Ice Core Locations in RESICE")[

    #figure[
          #image("./Content_pyresice/fig1.jpg", width: 100%)
          ]
        Color intensity indicates density of available sea ice cores.
  ]

//./Content_pyresice/overview.webp

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
            
          [Combines data & metadata from 287 sea ice cores and 138 sources],
          [Automatic metadata enrichment with Python routines],
          [Reproducible, traceable data compilation],
          [Harmonized units, coordinates, and naming standards],
          )]

        #figure[#link("https://git.rwth-aachen.de/mbd/pyresice")[#image("./Content_pyresice/pyresice-logo-resize.png", width: 100%)]]
        #cite(<Simson2025>))
    
      #pop.column-box()[
        #text(size: 40pt)[#bibliography("./Content_pyresice/bibliography-pyresice.bib")]
      ]

      //]

      #colbreak()
     #pop.column-box(heading: "Data Sources")[
      Data from three different sources.
    #figure[
          #image("./Content_pyresice/data-sources.png", width: 100%)
          ]
       Get started using Docker Containers
  ]

      #pop.column-box(heading: "Database preparation steps")[
        #figure[#image("./Content_pyresice/overview.webp", width: 100%)]]

])
    ],
    box(width: 100%)[#pop.set-theme(pop.uni-fr-middle-pink)
        #pop.column-box(heading: "    Useful Links",stretch-to-next: true)[
          #figure[#link("https://www.nature.com/articles/s41597-025-04665-x#citeas")[#image("./Misc/manual.png", width: 40%)]]
          #place(center,"Publication")
          #linebreak()
          #linebreak()
          #figure[#link("https://git.rwth-aachen.de/mbd/pyresice/-/blob/main/tests/test_pyresice.ipynb?ref_type=heads")[#image("./Misc/example.png", width: 40%)]]
          #place(center,"Tests")
          #linebreak()  
          #linebreak()
          #figure[#link("mailto:yildiz@mbd.rwth-aachen.de")[#image("./Misc/contact.png", width: 40%)]]
          #place(center,"Contact")

          #place(bottom+center,figure[#image("./Content_pyresice/pyresice-qr-box.png", width: 80%)])
          ]
    ],

)

#pop.set-theme(pop.uni-fr-middle-yellow)
#pop.bottom-box()[#figure[#image("./Misc/mss-rwth.png", width: 5%,)]]
