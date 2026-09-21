#import "my_typst_bib.typ":* 
#set page("a0", margin: 1cm, flipped: false)
// the following is needed so that there is some spacing between the boxes
#set text(size: 50pt)
#let box-spacing = 1.2em
#set columns(gutter: box-spacing)
#set block(spacing: box-spacing)




//#page(flipped: true)[ // rotates the whole page

// ---------------------------------
// Define Global variables
// // ---------------------------------

#let text-color = black
#let text-font = "Calibri"
#let text-size = 50pt
#let title-color = black
#let title-font = "Calibri"//"Arial"
#let title-color = black
// background color of the three content boxes
#let box-bg-color = rgb(199, 221, 242).desaturate(50%)//rgb(232,241,250).desaturate(50%)
// color of the frames of the three content boxes
#let box-frame-color = rgb(142, 186, 229)
// background color of the title box
#let title-box-bg-color = rgb(0, 84, 159).desaturate(20%)
#let title-box-text-color = white
// background color of the bottom box
#let bottom-box-bg-color = white//rgb(87,171,39).desaturate(20%)//rgb(184, 214, 152)// rgb(87,171,39).desaturate(20%)
// font of the vatch phrase in the central box
#let font-catch-phrase = "Comic Sans MS"
//#let institute-colors = rgb(142, 186, 229),rgb(241, 158, 176),rgb(250,190, 80)

//!!works with different number of colors but minimum is 2
#let institute-colors = (
  rgb(142, 186, 229), 
  rgb(241, 158, 176), 
  rgb(250, 190, 80)
)
#let institute-gradient = gradient.linear(..institute-colors, angle: 90deg)

// Apply it to a shape
//#rect(width: 100%, height: 50pt, fill: my-gradient)



// ---------------------------------
#logo-box(
  title: "PSimPy - Predictive and probabilistic simulation",
  font-style: "Calibri",
  bg-color: title-box-bg-color,
  text-color: title-box-text-color,
  author: "Hu Zhao, Anil Yildiz, Nazanin Bagherinejad",
  institution: "Chair of Methods for Model-based Development in Computational Engineering",
  university: "RWTH Aachen University",
  logo: "./Misc/mbd-software-logo.png" 
)


  #columns(2,[

// Summary, At a Glance, Highlights
  #titled-box-top(
    title: [Software Highlights], //Software Highlights
    font-title: title-font,
    radius-bottom-left: 0pt,radius-bottom-right: 0pt,
    color-frame: box-frame-color,
    thickness-frame: 20pt,
    color-title: black,
    bg-color: box-bg-color,
    body: [
      #align(center)[#text(font: text-font,size: 50pt, weight: "bold", fill:text-color)[Robust GP emulator for your simulation]]
      //#linebreak()

      //#align(center)[#neon-text(size:50pt, stroke-color: box-frame-color, fill-color: black,thickness: 1pt, font-style: "Calibri")[Robust GP emulator for your simulation!]]
      //#align(left)[#text(font: "Arial",size: 50pt, weight: "bold", fill:white)[Features]]
    
      
      #align(center)[#text(font: title-font,size: 50pt, weight: "bold", fill:black)[Save precious compute time!]]

       
      //#align(center)[#neon-text(size:50pt, stroke-color: box-frame-color, fill-color: black,thickness: 1pt, font-style: "Calibri", weight:"bold")[Save precious compute time!]]

      // Save precious compute time!
      #align(center)[#text(font: text-font,size: text-size, weight: "regular", fill: black)[


        #set table(
          stroke: 1pt,//none,
          gutter: 0.01em,
          fill: (x, y) =>
            if x == 0 or y == 0 {white}//{rgb(250, 190, 80) }
            else {
              if y==1 or y == 2 {white}//{rgb(142, 186, 229)}
            },
          inset: 10pt,//(right: 1em),
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

        #align(left)[#text(font: text-font,size: 50pt, weight: "regular", fill: black)[
        #set list(marker: [‣], spacing: 1em) //‣
          - Gaussian Process emulation
          - Bayesian Calibration
          - Global Sensitivity Analysis
          - Efficient Sampling 
          - Active Learning
      ]]

        /*
        //#show table.cell.where(y: 0): strong
        #show table.cell.where(x: 0): strong
        #set table(
          stroke: (x, y) => if y == 0 {
            (bottom: 0.7pt + black)
          },
          align: (x, y) => (
            if x > 0 { center }
            else { left }
          )
        )

        #table(
          columns: 4,
          table.header(
            [],
            [Training],
            [Evaluation],
            [2500 Eval.],
          ),
          [Simulator],[-], [32 min],[56 days],
          [Emulator],[4.5 days], [0.05 sec],[2 min],
        )]

*/
      ]


      ]

    ] 
  )


#colbreak()

#titled-box-top(
  // Software in Action
  title: [Software in Action], //Software in Action
  font-title: title-font,
  radius-bottom-left: 0pt,radius-bottom-right: 0pt,
  color-frame: box-frame-color,
  thickness-frame: 20pt,
  color-title: black,
  bg-color: box-bg-color,
  body: [
    #align(center)[#text(font: title-font,size: 50pt, weight: "bold", fill:black)[Quantify uncertainty. Identify key drivers. Calibrate with data.]]
     
    //#align(center)[#neon-text(size:50pt, stroke-color: box-frame-color, fill-color: black,thickness: 1pt, font-style: "Calibri")[Quantify uncertainty. Identify key drivers. Calibrate with data.]]
    //#move(dx:0pt)
    #align(center)[#figure[#image("./Content_pysimpy/example-img.png", width: 60%,)]]
    


  ],
  height-body:40%
)



])
 
#no-title-box(
  radius-top-left: 0pt, radius-top-right: 0pt,radius-bottom-left: 40pt,radius-bottom-right: 40pt,
  color-frame: box-frame-color,
  thickness-frame: 20pt,
  bg-color: box-bg-color,
  inset-width: 50pt,
  body:[


  #grid(
    columns: (1fr, auto),
    column-gutter: 20pt,
    align: top,  // both cells start at the same vertical position
    
    // Left cell: Key features text
    [
      #text(font: text-font, size: 80pt, weight: "bold", fill: black)[Key features]
      #v(50pt)
      #text(font: text-font, size: 50pt, weight: "regular", fill: black)[
        #set list(marker: [‣], spacing: 1em)
        - Open Source
        - Pythonic
        - API reference
        - Examples included
      ]
    ],
    
    // Right cell: QR code
    [
      #move(dx:-40pt)[#figure[#image("./Content_pysimpy/qr-pysimpy.png",width: 400pt)]]
    ],
  )
  
  #linebreak()
  #linebreak()
  #align(center)[#text(font: "Arial", size: 50pt, weight: "bold", fill: black)[Reference]]
  #text(size: text-size, fill: text-color, font: text-font)[
    #bibliography(title: none, "./Content_pysimpy/bibliography-pysimpy.bib")
  ]


  ],


  
  height-body: 35%,//37%

)

#no-title-box(
  radius-top-left: 10pt, radius-top-right: 10pt,radius-bottom-left: 10pt,radius-bottom-right: 10pt,
  bg-color: bottom-box-bg-color,//rgb(142, 186, 229),// rgb(250, 190, 80).desaturate(20%),
  //#move(dx:2000pt)
  
  body:[ 
    #align(center + horizon)[#figure[#link("https://www.mss.rwth-aachen.de/cms/~eiqx/mss/?lidx=1")[#image("./Misc/mss-rwth.png", height:150%,)]]]
    
  ],
  height-body: 7%,

)



    #floating-box(
      [
      #text(font: font-catch-phrase,size: 80pt, weight: "bold")[Want to build unified, robust and sustainable UQ workflows?]

      #stack(
        dir: ltr,      // stack left-to-righ
        spacing: 10pt,
        figure[#link("https://git.rwth-aachen.de/mbd/shire#user-content-how-to-use-shire")[#image("./Content_pysimpy/pysimpy-logo-vectorized.svg", width: 100%)]],
        [#text(font: font-catch-phrase,size: 40pt , weight: "bold")[#cite(<zhao_et_al_2023>)]])
//#figure[#link("https://git.rwth-aachen.de/mbd/shire#user-content-how-to-use-shire")[#image("./Content_pysimpy/pysimpy-Logo_small.png", width: 100%)]]
        
 

       
      ],
      x: 25%, 
      y: 50%, 
      width: 50%,
      height: 25%,
      background: rgb(255, 255, 255, 240),
      color-frame: institute-gradient,//gradient.linear(rgb(142, 186, 229),rgb(241, 158, 176),rgb(250,190, 80),angle: 90deg),// rgb(250, 190, 80),
      thickness-frame: 50pt,
      border-radius: 15pt,
      padding: 20pt,
      shadow: true,
    )
    



    /*


gradient.linear(rgb(142, 186, 229),rgb(241, 158, 176),rgb(250,190, 80),angle: 90deg)





    */