// ------------------
// The template is structured as follows:
// 
// 0) Import custom library and set up page layout
// 1) Global variables for poster layout and colors
// 2) Content
//  • Title Box
//  • Content Boxes
//  • Bottom Box
//  • Software Logo Box
// 
// -> the Software Logo Box is at the bottom to be drawn last and on top of other boxes
// ------------------

// --------------------------------------
// 0) IMPORT AND LAYOUT
// --------------------------------------

#import "mss_bib.typ":*  // * -> import all functions and variables from the library
#set page("a0", margin: 1cm, flipped: false)
#set text(size: 50pt)
// the following lines ensure spacing between the boxes
#let box-spacing = 1.2em
#set columns(gutter: box-spacing)
#set block(spacing: box-spacing)

// ---------------------------------------
// 1) GLOBAL VARIABLES
// --------------------------------------
// -> MSS-RWTH standard colors

// --- Title Box 
#let title-box-bg-color = rgb(64,127,183) // background color
#let title-box-text-color = white 

//  --- Software Logo Box ---
// MSS color gradient
#let mss-colors =(rgb(64,127,183),rgb(184,214,152), rgb(87,171,39))
#let mss-gradient = gradient.linear(..mss-colors, angle: 90deg)
// font of the catch phrase in the Software Logo Box
#let font-catch-phrase = "Arial"

// --- Content Boxes ---
// First three variables are needed for the format of the poster
#let height-body-box = 36% // height of the content boxes
#let size-box-title = 80pt // size of the content box title
#let inset-box = (top:140pt, rest: 70pt) // custom inset of the content boxes

#let box-bg-color = rgb(87,171,39).transparentize(90%) // background color
#let box-frame-color =rgb(87,171,39) // frame color
#let text-color = black
#let text-font = "Arial"
#let text-size = 50pt
#let title-color = black
#let title-font = "Arial"

// --- Bibliography ---
#let bibliography-text-size = 40pt

// --- Bottom Box ---
#let bottom-box-bg-color = white

// --------------------------------------
// 2) CONTENT
// --------------------------------------

// --- Title Box ------------------------
#title-box(
  title: "PSimPy - Predictive and Probabilistic Simulation",
  font-style: text-font,
  bg-color: title-box-bg-color,
  text-color: title-box-text-color,
  author: "Hu Zhao, Anil Yildiz, Nazanin Bagherinejad",
  institution: "Chair of Methods for Model-based Development in Computational Engineering",
  university: "RWTH Aachen University",

  // ------ Logo of Chair ---------
  // path to image
  logo: "./Misc/rwth-logo.png"
  // ------------------------------
)

// --- Content Boxes -------------------
#move(dy:1100pt)[ 
  #columns(2,[ // set up a grid with 2 columns
    // --------------------------------------------------------------------- 
    // first column
    #content-box(
      color-frame: box-frame-color,
      thickness-frame: 20pt,
      bg-color: box-bg-color,
      inset-width: inset-box,
      height-body:height-body-box,
      body:[
        // --- Title of Box ---  
        #align(center)[#text(font: title-font,size: size-box-title, weight: "bold", fill:black)[Highlights]]
        
        // --- Content of Box ---
        #align(center)[#text(font: title-font,size: 50pt, weight: "bold", fill:text-color)[Robust GP emulator for your simulation.]]
        #align(center)[#text(font: title-font,size: 50pt, weight: "bold", fill:text-color)[Save precious compute time!]]
        
        // table
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
          )]]
        
        // listing
        #align(left)[#text(font: text-font,size: 50pt, weight: "regular", fill: text-color)[
          #set list(marker: [•], spacing: 1em) //‣
            - Gaussian process emulation
            - Bayesian calibration
            - Global sensitivity analysis
            - Efficient sampling 
            - Active learning]]
    
      ]
    )

    #colbreak() // starts new column
    // --------------------------------------------------------------------- 
    // second column
    #content-box(
      color-frame: box-frame-color,
      thickness-frame: 20pt,
      bg-color: box-bg-color,
      inset-width: inset-box,
      height-body:height-body-box,
      body:[
        // --- Title of Box --- 
        #align(center)[#text(font: title-font,size: size-box-title, weight: "bold", fill:black)[In Action]]

        // --- Content of Box ---
        #align(center)[#text(font: title-font,size: 50pt, weight: "bold", fill:text-color)[Quantify uncertainty, identify key drivers and calibrate with data.]]
        
        // include example image
        #align(center)[#figure[#image("./Content_pysimpy/example-img.png", width: 60%,)]]
        // more content
        #align(center)[#text(font: text-font,size: text-size, weight: "regular", fill:text-color)[Open source and Pythonic]]

      ]
    )

  ])
]

//  --- Bottom Box ----------------------------

#move(dy:1100pt)[
  
  #content-box(
    radius-top-left: 10pt,
    radius-top-right: 10pt,
    radius-bottom-left: 10pt,
    radius-bottom-right: 10pt,
    bg-color: bottom-box-bg-color,
    height-body: 7%,
    body:[ // content
      #move(dy:-40pt)[#align(center)[#text(size: bibliography-text-size, fill: black, font: text-font)[
        #bibliography(title: none, "./Content_pysimpy/bibliography-pysimpy.bib")
        ]]
      ]
      
      #align(right)[
        #move(dy:-40pt, dx:80pt)[#link("https://www.mss.rwth-aachen.de/cms/~eiqx/mss/?lidx=1")[#image("./Misc/mss-rwth.png", height: 250%)]]
      ]
    ]

  )
]

//  --- SoftwareLogo Box ----------------------------
// drawn last to be on top of other boxes
 
/*
#software-logo-box(
  // global placement and size of the box
  x: 5%, 
  y: 17%, 
  width: 90%,
  height: 35%,
  // color and frame of the box
  background: rgb(255, 255, 255, 240),
  color-frame: mss-gradient,
  thickness-frame: 50pt,
  border-radius: 15pt,
  padding: 20pt,
  shadow: true,
  [// Content of Box
    // Catch Phrase
    #text(font: font-catch-phrase,size: 80pt, weight: "bold")[Want to build unified, robust and sustainable UQ workflows?]
    // (optional) Citation of software publication
    #text(font: font-catch-phrase,size: 40pt , weight: "bold")[#cite(<zhao_et_al_2023>)]
    // Software Logo with link to repository
    #move(dy:-100pt)[#link("https://git.rwth-aachen.de/mbd/shire#user-content-how-to-use-shire")[#image("./Content_pysimpy/pysimpy-logo-vectorized.svg", width: 100%)]]
    // QR Code to
    #move(dy:-310pt)[#image("./Content_pysimpy/qr-pysimpy.png",width: 430pt)]
      
  ]
) 
*/


#software-logo-box4(
  // global placement and size of the box
  x: 5%, 
  y: 17%, 
  width: 90%,
  height: 35%,
  // color and frame of the box
  background: rgb(255, 255, 255, 240),
  color-frame: mss-gradient,
  thickness-frame: 50pt,
  border-radius: 15pt,
  padding: 20pt,
  shadow: true,
  font: font-catch-phrase,
  catch-phrase: [Want to build unified, robust and sustainable UQ workflows?],
  citation: cite(<zhao_et_al_2023>),
  software-logo: "./Misc/rwth-graduierung.jpg",
  software-logo-link: "https://git.rwth-aachen.de/mbd/shire#user-content-how-to-use-shire",
  qr-code: "./Content_pysimpy/qr-pysimpy.png"
)
