//#import "storytiles-0.0.1/lib.typ":*
//#import "@preview/peace-of-posters:0.5.6" as pop
#import "peace-of-posters-0.5.6/lib.typ" as pop // import local modified library
#import "my_typst_bib.typ":* 
#set page("a0", margin: 1cm, flipped: false)
#pop.set-poster-layout(pop.layout-a0)
#pop.set-theme(pop.uni-fr)
#set text(size: pop.layout-a0.at("body-size"))
#let box-spacing = 1.2em
#set columns(gutter: box-spacing)
#set block(spacing: box-spacing)
#pop.update-poster-layout(spacing: box-spacing)

//#page(flipped: true)[ // rotates the whole page

#pop.title-box(
  title: "PSimPy - Predictive and probabilistic simulation with Python ", 
  authors: "Hu Zhao, Anil Yildiz, Nazanin Bagherinejad, Julia Kowalski ",
  institutes: "Chair of Methods for Model-based Development in Computational Engineering, RWTH Aachen University, Germany",
  keywords: "Gaussian Process, Multiphysics Simulation",
  logo: circle(image("./Misc/mbd-software-logo.png"), fill: white, inset: -11pt),
)

#pop.set-theme(pop.uni-fr-middle-white-pink)
    #columns(2,[


  #titled-box-top(
    title: [Summary],
    radius-bottom-left: 0pt,radius-bottom-right: 0pt,
    body: [
      #align(center)[#text(font: "Comic Sans MS",size: 45pt, weight: "bold", fill:white)[Come with a simulator, leave with a workflow]]
      //#linebreak()

      #align(left)[#text(font: "Calibri",size: 50pt, weight: "bold", fill:white)[Features]]
      #text(font: "Calibri",size: 50pt, weight: "bold", fill: white)[
        #list(
                  [Python wrapper],
                  [Robust GP Emulation],
                  [Lightweight Substitute = Fast Evaluations],)
      ]

      #align(center)[#text(font: "Comic Sans MS",size: 45pt, weight: "bold", fill:white)[Emulate your simulation and save compute time!]]

      #text(font: "Calibri",size: 45pt, weight: "regular", fill: white)[

        #set table(
          stroke: none,
          gutter: 0.2em,
          fill: (x, y) =>
            if x == 0 or y == 0 {rgb(250, 190, 80) }
            else {
              if y==1 or y == 2 {rgb(142, 186, 229)}
            },
          inset: (right: 1.5em),
        )

        #show table.cell: it => {
          if it.x == 0 or it.y == 0 {
            set text(white)
            strong(it)
          } else if it.body == [] {
            // Replace empty cells with '-'
            pad(..it.inset)[_-_]
          } else {
            it
          }
        }

        #table(
          columns: 4,
          [], [training], [evaluation], [2500 evals],

          [simulator], [-], [32 min], [56 days],
          [emulator], [4.5 days], [0.05 sec], [2 min],
        )
      ]

  #linebreak()
  #linebreak()
  #linebreak()

    ] 
  )


#colbreak()

#titled-box-top(
  // Software in Action
  title: [Software in Action],
  radius-bottom-left: 0pt,radius-bottom-right: 0pt,
  body: [
    #align(center)[#text(font: "Comic Sans MS",size: 45pt, weight: "bold", fill:white)[Quantify uncertainty. Identify key drivers. Calibrate with data.]]
    //#move(dx:0pt)
    #align(center)[#figure[#image("./Content_pysimpy/example-img.png", width: 60%,)]]
    




  ],
  height-body:40%
)



])
 
#no-title-box(
  radius-top-left: 0pt, radius-top-right: 0pt,radius-bottom-left: 40pt,radius-bottom-right: 40pt,
  body:[
    //#text(font: "Calibri",size: 55pt, weight: "bold", fill:blue)[aa]
    #move(dx:1793pt)[#figure[#image("./Content_pysimpy/qr-pysimpy.png", width: 20%,)]]
    #linebreak()
    #text(size: 50pt)[#bibliography(title:none,"./Content_pysimpy/bibliography-pysimpy.bib")]
    
  ],
  height-body: 35%,//37%

)

#no-title-box(
  fill-body: rgb(250, 190, 80).desaturate(40%),
  body:[
    #move(dx:2000pt)[#figure[#link("https://www.mss.rwth-aachen.de/cms/~eiqx/mss/?lidx=1")[#image("./Misc/mss-rwth.png", height:130%,)]]]
    
  ],
  height-body: 7%,

)

//#pop.set-theme(pop.uni-fr-middle-yellow)
//#pop.bottom-box()[#figure[#image("./Misc/mss-rwth.png", width: 5%,)]]


    #floating-box(
      [
      #text(font: "Comic Sans MS",size: 80pt, weight: "bold")[Want to build unified, robust and sustainable UQ workflows?]
      #stack(
        dir: ltr,      // stack left-to-righ
        spacing: 10pt,
        figure[#link("https://git.rwth-aachen.de/mbd/shire#user-content-how-to-use-shire")[#image("./Content_pysimpy/new_pysimpy-logo_small.jpg", width: 100%)]],
        [#text(font: "Comic Sans MS",size: 40pt, weight: "bold")[#cite(<zhao_et_al_2023>)]])
//#figure[#link("https://git.rwth-aachen.de/mbd/shire#user-content-how-to-use-shire")[#image("./Content_pysimpy/pysimpy-Logo_small.png", width: 100%)]]
        


       
      ],
      x: 25%, 
      y: 50%, 
      width: 50%,
      height: 25%,
      background: rgb(255, 255, 255, 240),
      border-color: rgb(250, 190, 80),
      border-width: 30pt,
      border-radius: 15pt,
      padding: 20pt,
      shadow: true,
    )
    