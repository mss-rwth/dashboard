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
  title: "bryne - Python Package for Reusability-Targeted Sea Ice Databases",
  authors: "Benjamin Terschanski, Robert Klöfkorn, Andreas Dedner, Julia Kowalski ",
  institutes: "Chair of Methods for Model-based Development in Computational Engineering, RWTH Aachen University, Germany",
  keywords: "Multiphysic, FEM",
  logo: circle(image("./Misc/mbd-software-logo.png"), fill: white, inset: -11pt),
)

#pop.set-theme(pop.uni-fr-middle-white-pink)
//#grid(
    //gutter: pop.layout-a4.spacing,
    //box(width: 100%)[
    #columns(2,[
/*
      #pop.column-box(heading: "Methods", stretch-to-next: true)[]

      #pop.column-box(heading: "Bibliography")[]

      #colbreak()
      #pop.column-box(heading: "Features",stretch-to-next: true )[]

      #pop.column-box(heading: "Acknowledgement")[
        #text(size: 40pt)[#bibliography("./Content_pyresice/bibliography-pyresice.bib")]]
*/
      //#box(width: 100%, height: 50%, image("./Misc/mbd-software-logo.png"))
/*
#box(
  width: 100%,
  height: 37%,

  inset: 1em,
)[
        #pop.column-box(heading: "Methods")[          #list(
          [handles geospatial data],
          [probabilistic susceptibility mapping],
          [shallow landslides],
          [dataset management],
          [One-hot or ordinal encoding],
          [Supports parallel prediction],)]
] */

/*#box(
  width: 100%,
  height: 37%,
  stroke: 1pt + black,
  inset: 1em,
)[
  This is a fixed-size box.
] */

#titled-box-top(
  
  title: [Methods],
  body: [
Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example 
  ]
)

#titled-box-bottom(
  
  title: [Acknowledgement],
  body: [
Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example 
  ]
)

#colbreak()

#titled-box-top(
  
  title: [Example],
  body: [
Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example 
  ],
  height-body:40%
)

#titled-box-bottom(
  
  title: [Bibliography],
  body: [
Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example Example 
  ],
  height-body:40%
)

/*
#box(
  width: 100%,
  height: 37%,
  stroke: white,//1pt + black,
  inset: 1em,
  fill: rgb(241, 158, 176)
)[
  This is a fixed-size box.
]
#box(
  width: 100%,
  height: 37%,
  stroke: 1pt + black,
  inset: 1em,
)[
  This is a fixed-size box.
]
*/

      //box(width: 100%, height: 50%)[]
      //#colbreak()
      //box(width: 100%, height: 50%)[]
      //box(width: 100%, height: 50%)[]

])
    //],

//)

#pop.set-theme(pop.uni-fr-middle-yellow)
#pop.bottom-box()[#figure[#image("./Misc/mss-rwth.png", width: 5%,)]]


    #floating-box(
      [
       Want to create reusible multiphysics simulations?
      #figure[#link("https://git.rwth-aachen.de/mbd/bryne")[#image("./Content_bryne/bryne_img.png", width: 80%)]]


       
      ],
      x: 20%, 
      y: 40%, 
      width: 60%,
      height: 30%,
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