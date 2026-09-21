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

#import "mss_lib.typ":*  // * -> import all functions and variables from the library
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

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// >>>>>>>> CUSTOMIZE HERE <<<<<<<<<
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  title: "SHIRE - Susceptibility Hazard mappIng fRamEwork",
  font-style: text-font,
  bg-color: title-box-bg-color,
  text-color: title-box-text-color,
  author: "Ann-Kathrin Edrich, Anil Yildiz, Julia Kowalski",
  institution: "Chair of Methods for Model-based Development in Computational Engineering",
  university: "RWTH Aachen University",

  // ------ Logo of Chair ---------
  // path to image
  logo: "./Misc/mbd-software-logo.png"
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

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// >>>>>>>> CUSTOMIZE HERE <<<<<<<<<
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// ~ next 80 lines are the posters main content
        // --- Title of Box ---  
       #align(center)[#text(font: title-font,size: size-box-title, weight: "bold", fill:black)[Highlights]]
        
        // --- Content of Box ---
        #align(center)[#text(font: title-font,size: 50pt, weight: "bold", fill:text-color)[Robust ML for hazard mapping.]]
        #align(center)[#text(font: title-font,size: 50pt, weight: "bold", fill:text-color)[Save weeks of manual geoprocessing!]]
        

        #linebreak()
        // listing
        #align(left)[#text(font: text-font,size: 50pt, weight: "regular", fill: text-color)[
          #set list(marker: [•], spacing: 1em) //‣
            - Random Forest
            - Automated dataset generation and preprocessing
            - GUI and script-based versions
            - Modular, open-source, FAIR-by-design 
            - Full run logging for reproducibility]]
    
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
        #align(center)[#text(font: title-font,size: 50pt, weight: "bold", fill:text-color)[Quantify susceptibility, identify key drivers, validate against real inventories.]]
        
        // include example image
        #align(center)[#figure[#image("./Content_SHIRE/SHIRE-Example.png", width: 60%,)]]
        // more content
        #align(center)[#text(font: text-font,size: text-size, weight: "regular", fill:text-color)[Open source and built for FAIR research.]]

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

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// >>>>>>>> CUSTOMIZE HERE <<<<<<<<<
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    
    body:[ // content
      #move(dy:-40pt)[#align(center)[#text(size: bibliography-text-size, fill: black, font: text-font)[
        // >>>>>>>>>> insert path to your bibliography file here <<<<<<<<<<
        #bibliography(title: none, "./Content_SHIRE/bibliography-SHIRE.bib")
        ]]
      ]

      #align(right)[
        #move(dy:-40pt, dx:80pt)[#link("https://www.mss.rwth-aachen.de/cms/~eiqx/mss/?lidx=1")[#image("./Misc/mss-rwth.png", height: 250%)]]
      ]
    ]

  )
]


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
  padding: 60pt,
  shadow: true,
  logo-ratio: 60,

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// >>>>>>>> CUSTOMIZE HERE <<<<<<<<<
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  font: font-catch-phrase,
  catch-phrase: [Want to build FAIR, reproducible landslide susceptibility maps?],
  // >>>>  insert citation key of your publication here, e.g. cite(<zhao_et_al_2023>) <<<
  citation: cite(<edrich2024modular>),

  software-logo: "./Content_SHIRE/SHIRE_logo-no-border.png",
  software-logo-link: "https://git.rwth-aachen.de/mbd/shire#user-content-how-to-use-shire",
  qr-code: "./Content_pysimpy/qr-pysimpy.png"
)



