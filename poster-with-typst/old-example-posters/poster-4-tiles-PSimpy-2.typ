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
    body: [#text(font: "Calibri",size: 55pt, weight: "bold", fill:white)[Train an GP Emulator and save compute time!]
      #text(font: "Calibri",size: 45pt, weight: "regular", fill: white)[

        #set table(
          stroke: none,
          gutter: 0.2em,
          fill: (x, y) =>
            if x == 0 or y == 0 { rgb(142, 186, 229) }
            else {
              if y==1 or y == 2 {rgb(250, 190, 80)}
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
      #text(font: "Calibri",size: 45pt, weight: "bold", fill: white)[
        #list(
                  [Python wrapper],
                  [Robust GP Emulation],
                  [Lightweight Substitute],)
      ]
  #linebreak()
  #linebreak()
  #linebreak()
      #move(dx:0pt)[#figure[#image("./Content_pysimpy/example-img.png", width: 40%,)]]

    ] 
  )

#titled-box-bottom(
  
  title: [Example],
  body: [
  #linebreak()
  #linebreak()
  #linebreak()
  #linebreak()
  #linebreak()
  #linebreak()
#text(size: 55pt, weight: "regular")[#list(
          [Set up a Bayesian problem],
          [Kick off with a small batch of simulationsand a GP Emulator],
          [Active learning automatically picks the next input points to improve calibration],
          [Estimate the posterior from the emulator and visualize it],)]
#text(size: 55pt, weight: "bold", fill:white)[Active-learning calibration]
  
  ]
)

#colbreak()

#titled-box-top(
  
  title: [Software in Action],
  body: [
    #move(dx:30pt)[#figure[#image("./Content_pysimpy/example-img.png", width: 70%,)]]
    
    #text(size: 55pt, weight: "bold", fill:white)[Identify key drivers. Calibrate with data.]
#text(size: 55pt, weight: "regular")[#list(
          [Run sensitivity analysis using Sobol indices],
          [Sample efficiently using Saltelli, LHS, or Metropolis Hastings],
)]



  ],
  height-body:40%
)

#titled-box-bottom(
  
  title: [Bibliography],
  body: [
  #linebreak()
  #linebreak()
  #linebreak()
  #linebreak()
  #linebreak()
  #linebreak()
#text(size: 50pt)[#bibliography("./Content_pysimpy/bibliography-pysimpy.bib")]
  ],
  height-body:40%
)

])
 

#pop.set-theme(pop.uni-fr-middle-yellow)
#pop.bottom-box()[#figure[#image("./Misc/mss-rwth.png", width: 5%,)]]


    #floating-box(
      [

#text(font: "Comic Sans MS",size: 80pt, weight: "bold")[       Want to build unified, robust and sustainable UQ workflows?]
#move(dy:0pt)[#figure[#link("https://git.rwth-aachen.de/mbd/shire#user-content-how-to-use-shire")[#image("./Content_pysimpy/pysimpy-Logo_small.png", width: 100%)]]]


       
      ],
      x: 25%, 
      y: 50%,//42.5%, 
      width: 50%,
      height: 25%,
      background: rgb(255, 255, 255, 240),
      border-color: rgb(250, 190, 80),
      border-width: 30pt,
      border-radius: 15pt,
      padding: 20pt,
      shadow: true,
    )
/*
#import "storytiles-0.0.1/lib.typ":*
#import "peace-of-posters-0.5.6/lib.typ" as pop // import 
#four-image-page(
  title: "浮动框与图片的完美结合",
  show-header: false,
  show-footer: false,
  images: (
    none,
    none,
    none,
    none,
  ),
  captions: (),
  content: [
    // 中央说明框
    #floating-box(
      [
        = 🖼️ 图片展示区

        四张图片展示了不同的内容，每张图片都有其独特的价值。

        *浮动框优势*：
        - 不影响图片布局
        - 提供额外信息层
        - 增强视觉层次
      ],
      x: 30%, // 距页面左边30%
      y: 35%, // 距页面顶部35%（接近中央）
      width: 40%,
      background: rgb(255, 255, 255, 240),
      border-color: rgb("#8e44ad"),
      border-width: 3pt,
      border-radius: 15pt,
      padding: 12pt,
      shadow: true,
    )], // 移除浮动框，改为在页面外单独定义
)
*/