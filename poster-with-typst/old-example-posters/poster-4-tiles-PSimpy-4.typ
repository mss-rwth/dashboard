#import "my_typst_bib.typ":* 
#set page("a0", margin: 1cm, flipped: false)
// the following is needed so that there is some spacing between the boxes
#set text(size: 50pt)
#let box-spacing = 1.2em
#set columns(gutter: box-spacing)
#set block(spacing: box-spacing)

//#page(flipped: true)[ // rotates the whole page

/*
#logo-header(
  title:
  subtitle:,
  logo:,
  bg-color: red

)
*/

// --- Usage ---
#logo-box(
  title: "PSimPy - Predictive and probabilistic simulation",
  font-style: "Calibri",
  author: "Hu Zhao, Anil Yildiz, Nazanin Bagherinejad",
  institution: "Chair of Methods for Model-based Development in Computational Engineering",
  university: "RWTH Aachen University",
  logo: "./Misc/mbd-software-logo.png" 
)


  #columns(2,[


  #titled-box-top(
    title: [Summary],
    radius-bottom-left: 0pt,radius-bottom-right: 0pt,
    body: [
      #align(center)[#text(font: "Comic Sans MS",size: 50pt, weight: "bold", fill:white)[Robust GP emulator for your simulation]]
      //#linebreak()

      //#align(left)[#text(font: "Arial",size: 50pt, weight: "bold", fill:white)[Features]]
      #text(font: "Arial",size: 50pt, weight: "bold", fill: white)[
        #set list(marker: [‣])
          - Gaussian Process emulation
          - Bayesian Calibration
          - Global Sensitivity Analysis
          - Efficient Sampling
          - Active Learning
        /*#list(
                  [Gaussian Process emulation],
                  [Bayesian Calibration],
                  [Global Sensitivity Analysis],
                  [Lightweight Substitute = Fast Evaluations],)*/
      ]
      #align(center)[#text(font: "Comic Sans MS",size: 50pt, weight: "bold", fill:white)[Lightweight Substitute = Fast Evaluations]]
      // Save precious compute time!
      #text(font: "Calibri",size: 45pt, weight: "regular", fill: black)[

        #set table(
          stroke: none,
          gutter: 0.2em,
          fill: (x, y) =>
            if x == 0 or y == 0 {white}//{rgb(250, 190, 80) }
            else {
              if y==1 or y == 2 {gray}//{rgb(142, 186, 229)}
            },
          inset: (right: 1.5em),
        )

        #show table.cell: it => {
          if it.x == 0 or it.y == 0 {
            set text(black)
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
    #linebreak()
    #align(center)[#text(font: "Arial",size: 50pt, weight: "bold", fill:white)[Reference]]
    #text(size: 50pt)[#bibliography(title:none,"./Content_pysimpy/bibliography-pysimpy.bib")]
    
  ],
  height-body: 35%,//37%

)

#no-title-box(
  radius-top-left: 10pt, radius-top-right: 10pt,radius-bottom-left: 10pt,radius-bottom-right: 10pt,
  fill-body: rgb(250, 190, 80).desaturate(20%),
  body:[ //#move(dx:2000pt)
    #align(center + horizon)[#figure[#link("https://www.mss.rwth-aachen.de/cms/~eiqx/mss/?lidx=1")[#image("./Misc/mss-rwth.png", height:150%,)]]]
    
  ],
  height-body: 7%,

)




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
    