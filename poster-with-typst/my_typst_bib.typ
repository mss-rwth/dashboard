#let titled-box-top(title:none, body:none, height-body:33%) = {
  // Title Bar Block ---
  let title-block = block(
    width: 100%,
    fill: white,
    inset: (x: 10pt, y: 20pt),
    radius: (top-left: 5pt, top-right: 5pt, bottom-left: 0pt, bottom-right: 0pt),
    [
      #align(center)[
        #text(100pt,rgb(250, 190, 80),font:"DejaVu Sans Mono", weight: "bold", title)
      ]
    ]
  )
  
  // Content Body Block ---
  let body-block = block(
    width: 100%,
    height: height-body,
    fill: rgb(241, 158, 176),
    inset: 30pt,
    text(60pt, white, body)
  )

  // stack the two blocks with 0pt spacing ---

  stack(
    dir: ttb, 
    spacing: 0pt, // Enforce zero spacing between elements
    title-block, // Element 1
    body-block   // Element 2
  )
}


#let titled-box-bottom(title:none, body:none, height-body:33%) = {
  // Title Bar Block ---
  let title-block = block(
    width: 100%,
    fill: white,
    inset: (x: 10pt, y: 20pt),
    radius: (top-left: 5pt, top-right: 5pt, bottom-left: 0pt, bottom-right: 0pt),
    [
      #align(center)[
        #text(100pt,rgb(250, 190, 80),font:"DejaVu Sans Mono", weight: "bold", title)
      ]
    ]
  )
  
  // Content Body Block ---
  let body-block = block(
    width: 100%,
    height: height-body,
    fill: rgb(241, 158, 176),
    inset: 30pt,
    text(60pt, white, body)
  )

  // stack the two blocks with 0pt spacing ---

  stack(
    dir: ttb, 
    spacing: 0pt, // Enforce zero spacing between elements
    body-block,   // Element 2
    title-block // Element 1
  )
}


#let floating-box(
  content,
  x: 10%,
  y: 10%,
  width: auto,
  height: auto,
  background: rgb(255, 255, 255, 220), // 半透明白色
  border-color: rgb("#1f4e79"), // 默认主题色
  border-width: 1pt,
  border-radius: 5pt,
  padding: 20pt,
  shadow: true,
  z-index: 10,
) = {
  // 使用绝对定位：从页面左上角开始计算位置
  place(
    top + left,
    dx: x,
    dy: y,
  )[
    // 简单的阴影效果（可选）
    #if shadow {
      place(
        dx: 2pt,
        dy: 2pt,
      )[
        #box(
          width: width,
          height: height,
          fill: rgb(0, 0, 0, 30), // 半透明黑色阴影
          radius: border-radius,
        )
      ]
    }

    // 主内容框
    #box(
      width: width,
      height: height,
      fill: background,
      stroke: border-width + border-color,
      radius: border-radius,
      inset: 100pt
    )[
    
      #align(center)[
        #text(110pt,black,font:"Libertinus Serif", weight: "bold", content)
      ]
    
    ]
  ]
}
