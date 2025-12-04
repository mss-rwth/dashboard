#let titled-box(title:none, body:none) = {
  // Title Bar Block ---
  let title-block = block(
    fill: blue.darken(30%),
    inset: (x: 10pt, y: 5pt),
    radius: (top-left: 5pt, top-right: 5pt, bottom-left: 0pt, bottom-right: 0pt),
    [
      #align(center)[
        #text(14pt, white, weight: "bold", title)
      ]
    ]
  )
  
  // Content Body Block ---
  let body-block = block(
    fill: blue.lighten(90%),
    stroke: 1pt + blue,
    inset: 10pt,
    radius: (top-left: 0pt, top-right: 0pt, bottom-left: 5pt, bottom-right: 5pt),
    body
  )

  // stack the two blocks with 0pt spacing ---

  stack(
    dir: ttb, 
    spacing: 0pt, // Enforce zero spacing between elements
    title-block, // Element 1
    body-block   // Element 2
  )
}

// --- Usage ---
#titled-box(
  title: [Section One Title],
  body: [
    This content should now be perfectly flush with the title bar above it, 
    using a structure similar to the reference library.
  ]
)