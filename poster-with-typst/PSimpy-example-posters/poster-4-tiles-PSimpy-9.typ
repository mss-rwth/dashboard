// in this poster I am trying to incorporate Nicoles Suggestions
// and also changed from calibri to Arial to fullfill rwth

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
#let text-font = "Arial" // "Calibri"
#let text-size = 50pt
#let title-color = black
#let title-font = "Arial"// "Calibri"


#let bibliography-text-size = 40pt

// background color of the three content boxes
#let box-bg-color = rgb(87,171,39).transparentize(90%) // white// rgb(184,214,152).desaturate(80%)// rgb(250, 190, 80).desaturate(90%)//rgb(199, 221, 242).desaturate(50%)//rgb(232,241,250).desaturate(50%)
// color of the frames of the three content boxes
#let box-frame-color =rgb(87,171,39)// rgb(250, 190, 80)//rgb(142, 186, 229)
#let height-body-box = 36% // height of the content boxes
#let size-box-title = 80pt // size of the content box title
#let inset-box = (top:140pt, rest: 70pt) // custom inset of the content boxes
// background color of the title box
#let title-box-bg-color = rgb(64,127,183)// rgb(142, 186, 229)//rgb(0, 84, 159).desaturate(20%)
#let title-box-text-color = white
// background color of the bottom box
#let bottom-box-bg-color = white//rgb(87,171,39).desaturate(20%)//rgb(184, 214, 152)// rgb(87,171,39).desaturate(20%)
// font of the catch phrase in the central box
#let font-catch-phrase = "Arial" //"Comic Sans MS"
//#let institute-colors = rgb(142, 186, 229),rgb(241, 158, 176),rgb(250,190, 80)

//!!works with different number of colors but minimum is 2
#let institute-colors = (
  rgb(64,127,183),//rgb(142, 186, 229), 
  rgb(184,214,152),
  rgb(87,171,39),//rgb(241, 158, 176), 
  //rgb(250, 190, 80)
)
#let institute-gradient = gradient.linear(..institute-colors, angle: 90deg)

// Apply it to a shape
//#rect(width: 100%, height: 50pt, fill: my-gradient)



// ---------------------------------
#logo-box(
  title: "PSimPy - Predictive and Probabilistic Simulation",
  font-style: text-font,
  bg-color: title-box-bg-color,
  text-color: title-box-text-color,
  author: "Hu Zhao, Anil Yildiz, Nazanin Bagherinejad",
  institution: "Chair of Methods for Model-based Development in Computational Engineering",
  university: "RWTH Aachen University",
  logo: "./Misc/mbd-software-logo.png" 
)

 #move(dy:1100pt)[ 
  #columns(2,[

// Summary, At a Glance, Highlights

// titled-box-bottom-new

  #no-title-box(
    //title: [Software Highlights], //Software Highlights
    //font-title: title-font,
    color-frame: box-frame-color,
    thickness-frame: 20pt,
    //color-title: black,
    bg-color: box-bg-color,
    inset-width: inset-box,
    body: [
 
       #align(center)[#text(font: title-font,size: size-box-title, weight: "bold", fill:black)[Highlights]]

      #align(center)[#text(font: title-font,size: 50pt, weight: "bold", fill:text-color)[Robust GP emulator for your simulation.]]
      //#linebreak()

      //#align(center)[#neon-text(size:50pt, stroke-color: box-frame-color, fill-color: black,thickness: 1pt, font-style: "Calibri")[Robust GP emulator for your simulation!]]
      //#align(left)[#text(font: "Arial",size: 50pt, weight: "bold", fill:white)[Features]]
    
      
      #align(center)[#text(font: title-font,size: 50pt, weight: "bold", fill:text-color)[Save precious compute time!]]

       
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
          [], [Training], [Evaluation], [2500 Evals],

          [Simulator], [-], [32 min], [56 days],
          [Emulator], [4.5 days], [0.05 sec], [2 min],
        )

        #align(left)[#text(font: text-font,size: 50pt, weight: "regular", fill: text-color)[
        #set list(marker: [•], spacing: 1em) //‣
          - Gaussian process emulation
          - Bayesian calibration
          - Global sensitivity analysis
          - Efficient sampling 
          - Active learning
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

    ] , height-body:height-body-box
  )


#colbreak()

// titled-box-bottom-new
#no-title-box(
  // Software in Action
  //title: [Software in Action], //Software in Action
  //font-title: title-font,
  color-frame: box-frame-color,
  thickness-frame: 20pt,
  //color-title: black,
  bg-color: box-bg-color,
  inset-width: inset-box,
  body: [

    #align(center)[#text(font: title-font,size: size-box-title, weight: "bold", fill:black)[In Action]]

    #align(center)[#text(font: title-font,size: 50pt, weight: "bold", fill:text-color)[Quantify uncertainty, identify key drivers and calibrate with data.]]
     
    //#align(center)[#neon-text(size:50pt, stroke-color: box-frame-color, fill-color: black,thickness: 1pt, font-style: "Calibri")[Quantify uncertainty. Identify key drivers. Calibrate with data.]]
    //#move(dx:0pt)
    #align(center)[#figure[#image("./Content_pysimpy/example-img.png", width: 60%,)]]
    
    #align(center)[#text(font: text-font,size: text-size, weight: "regular", fill:text-color)[Open source and Pythonic]]

  ],
  height-body:height-body-box
)



])
] // #move
 

/* 
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
*/

/*
  #align(center)[#text(font: "Arial", size: 50pt, weight: "bold", fill: black)[Reference]]
  #text(size: text-size, fill: text-color, font: text-font)[
    #bibliography(title: none, "./Content_pysimpy/bibliography-pysimpy.bib")
  ]

  */

/*
      #move(dy:1500pt)[
    #no-title-box(
  radius-top-left: 10pt, radius-top-right: 10pt,radius-bottom-left: 10pt,radius-bottom-right: 10pt,
  bg-color: bottom-box-bg-color,//rgb(142, 186, 229),// rgb(250, 190, 80).desaturate(20%),
  //#move(dx:2000pt)
  
  body:[ 
    #align(center + horizon)[#text(size: text-size, fill: text-color, font: text-font)[
    #bibliography(title: none, "./Content_pysimpy/bibliography-pysimpy.bib")
  ]]
    
  ],
  height-body: 7%,

)
      ]
*/


// Bottom Box

    // dy:1250pt
      #move(dy:1100pt)[
    
#no-title-box(
  radius-top-left: 10pt, radius-top-right: 10pt,radius-bottom-left: 10pt,radius-bottom-right: 10pt,
  bg-color: bottom-box-bg-color,//rgb(142, 186, 229),// rgb(250, 190, 80).desaturate(20%),
  //#move(dx:2000pt)
  
  body:[
    #move(dy:-40pt)[#align(center)[#text(size: bibliography-text-size, fill: black, font: text-font)[
    #bibliography(title: none, "./Content_pysimpy/bibliography-pysimpy.bib")
  ]]]
    
    #align(right)[
      #move(dy:-40pt, dx:80pt)[#link("https://www.mss.rwth-aachen.de/cms/~eiqx/mss/?lidx=1")[
        #image("./Misc/mss-rwth.png", height: 250%)
      ]
]]


  ],
  height-body: 7%,

)
      ]



    #floating-box(
      [
      #text(font: font-catch-phrase,size: 80pt, weight: "bold")[Want to build unified, robust and sustainable UQ workflows?  ]
      #text(font: font-catch-phrase,size: 40pt , weight: "bold")[#cite(<zhao_et_al_2023>)]


        #move(dy:-100pt)[#link("https://git.rwth-aachen.de/mbd/shire#user-content-how-to-use-shire")[#image("./Content_pysimpy/pysimpy-logo-vectorized.svg", width: 100%)]] 

        #move(dy:-300pt)[#image("./Content_pysimpy/qr-pysimpy.png",width: 430pt)]
  /*
    #align(center + horizon)[
     #figure[#image("./Content_pysimpy/qr-pysimpy.png",width: 400pt)]]
    */

        // [#text(font: font-catch-phrase,size: 40pt , weight: "bold")[#cite(<zhao_et_al_2023>)]] 
//#figure[#link("https://git.rwth-aachen.de/mbd/shire#user-content-how-to-use-shire")[#image("./Content_pysimpy/pysimpy-Logo_small.png", width: 100%)]]
        
 

       
      ],
      x: 5%, 
      y: 17%, 
      width: 90%,
      height: 35%,
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