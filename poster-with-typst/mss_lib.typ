
// Box for the title box with logo
#let title-box(
  title: "Project Title",
  author: "Author",
  institution: "Institution",
  university: "University",
  logo: none,
  bg-color: rgb(142, 186, 229).desaturate(10%),
  text-color: white,
  font-style:"Arial",
  logo-size: 400pt,
  row-height: 430pt,
  title-text-size-big: 80pt,
  title-text-size-small: 50pt,
  radius-top-left: 10pt, radius-top-right: 10pt,radius-bottom-left: 10pt,radius-bottom-right: 10pt
) = {
  // row-height controls the vertical space the title text and logo are
  // centered in (i.e. how far down they sit / how much "air" is around
  // them). logo-size controls only the circle's diameter. They default
  // to matching -- increase row-height on its own to push everything
  // down (or give a wrapping title more breathing room) without making
  // the logo bigger.
  let resolved-row-height = if row-height != none { row-height } else { logo-size }
  block(
    width: 100%,
    height: 15%,
    radius: (top-left: radius-top-left, top-right: radius-top-right, bottom-left: radius-bottom-left, bottom-right: radius-bottom-right),
    fill: bg-color,
    inset: 30pt,
    //radius: 5pt,
    grid(
      columns: (1fr, auto),
      // Fix: pin the row height (instead of letting it auto-size to
      // whichever column is tallest) so a wrapping title can no longer
      // stretch the row and shift the horizon-centered logo around.
      rows: (resolved-row-height,),
      gutter: 20pt,
      // Left side: Text content
      align(left + horizon)[
        #text(fill: text-color,font:font-style, weight: "bold", size: title-text-size-big, box(title))
        #v(1pt)
        #text(fill: text-color,font: font-style, weight: "regular", size: title-text-size-small, box(author))
        #text(fill: text-color,font: font-style, weight: "regular", size: title-text-size-small, box(institution))        
        #text(fill: text-color,font: font-style, weight: "regular", size: title-text-size-small, box(university))

      ],
      // Right side: Logo in a white circle
      if logo != none {
        align(right + horizon)[
          #block(
            width: logo-size,
            height: logo-size,
            fill: white,
            radius: 50%,
            clip: true, // hard-clip anything to the circle, just in case
            inset: 20pt, // Space inside the circle around the logo
            align(center + horizon, image(logo, width: 100%, height: 100%, fit: "contain"))
          )
        ]
      }
    )
  )
}




// Box for the title box with logo
#let title-box-old(
  title: "Project Title",
  author: "Author",
  institution: "Institution",
  university: "University",
  logo: none,
  bg-color: rgb(142, 186, 229).desaturate(10%),
  text-color: white,
  font-style:"Arial",
  radius-top-left: 10pt, radius-top-right: 10pt,radius-bottom-left: 10pt,radius-bottom-right: 10pt
) = {
  block(
    width: 100%,
    height: 15%,
    radius: (top-left: radius-top-left, top-right: radius-top-right, bottom-left: radius-bottom-left, bottom-right: radius-bottom-right),
    fill: bg-color,
    inset: 30pt,
    //radius: 5pt,
    grid(
      columns: (1fr, auto),
      gutter: 20pt,
      // Left side: Text content
      align(left + horizon)[
        #text(fill: text-color,font:font-style, weight: "bold", size: 80pt, box(title))
        #v(1pt)
        #text(fill: text-color,font: font-style, weight: "regular", size: 50pt, box(author))
        #text(fill: text-color,font: font-style, weight: "regular", size: 50pt, box(institution))        
        #text(fill: text-color,font: font-style, weight: "regular", size: 50pt, box(university))

      ],
      // Right side: Logo in a white circle
      if logo != none {
        align(right + horizon)[
          #block(
            width: 400pt,
            height: 400pt,
            fill: white,
            radius: 50%,
            clip: true, // hard-clip anything to the circle, just in case
            inset: 20pt, // Space inside the circle around the logo
            align(center + horizon, image(logo, width: 100%, height: 100%, fit: "contain"))
          )
        ]
      }
    )
  )
}





// rgb(241, 158, 176).desaturate(40%)

// function to create boxes with title on top
// if title is too long, font-size will be scaled down to prevent the title from taking up two lines
#let titled-box-top(title: none, body: none, height-body: 33%,font-title: "Arial",bg-color: white, color-title:black,color-frame:none, thickness-frame: 2pt, radius-top-left: 40pt, radius-top-right: 40pt,radius-bottom-left: 40pt,radius-bottom-right: 40pt) = {
  layout(size => {
    // define the title style
    let title-style(content) = text(
      100pt, 
      color-title, 
      font: font-title, 
      weight: "bold", 
      // force content into a single-line box
      box(content) 
    )

    // calculate widths
    let available-width = size.width - 20pt
    let measured-width = measure(title-style(title)).width

//  
    // create the title block
    let title-block = block(
      width: 100%,
      fill: white,
      inset: (x: 10pt, y: 20pt),
      radius: (top-left: 5pt, top-right: 5pt, bottom-left: 0pt, bottom-right: 0pt),
      align(center)[
            //#text(100pt,black,font:font-title, weight: "bold",title )
        
        #if measured-width > available-width {
          // shrink horizontally to fit available space
          scale(x: (available-width / measured-width) * 100%, reflow: true, title-style(title))
        } else {
          title-style(title)
        } 
      ]
    )
    
    //*/
/*
  let title-block = block(
    width: 100%,
    fill: white,
    inset: (x: 10pt, y: 20pt),
    radius: (top-left: 5pt, top-right: 5pt, bottom-left: 0pt, bottom-right: 0pt),
    [
      #align(center)[
        #text(100pt,black,font:"DejaVu Sans Mono", weight: "bold", title)
      ]
    ]
  )
*/

    // body block
    let body-block = block(
      radius: (top-left: radius-top-left, top-right: radius-top-right, bottom-left: radius-bottom-left, bottom-right: radius-bottom-right),
      width: 100%,
      height: height-body,
      fill: bg-color,
      stroke: thickness-frame + color-frame, // Thickness and color
      inset: 70pt,
      text(60pt, white, body)
    )
    // stack title and body
    stack(dir: ttb, spacing: 30pt, title-block, body-block)
  })
}


#let titled-box-bottom(title: none, body: none, height-body: 33%,font-title: "Arial",bg-color: white, color-title:black,color-frame:none, thickness-frame: 2pt, radius-top-left: 40pt, radius-top-right: 40pt,radius-bottom-left: 40pt,radius-bottom-right: 40pt) = {
  layout(size => {
    // define the title style
    let title-style(content) = text(
      100pt, 
      color-title, 
      font: font-title, 
      weight: "bold", 
      // force content into a single-line box
      box(content) 
    )

    // calculate widths
    let available-width = size.width - 20pt
    let measured-width = measure(title-style(title)).width

//  
    // create the title block
    let title-block = block(
      width: 100%,
      fill: white,
      inset: (x: 10pt, y: 20pt),
      radius: (top-left: 5pt, top-right: 5pt, bottom-left: 0pt, bottom-right: 0pt),
      align(center)[
            //#text(100pt,black,font:font-title, weight: "bold",title )
        
        #if measured-width > available-width {
          // shrink horizontally to fit available space
          scale(x: (available-width / measured-width) * 100%, reflow: true, title-style(title))
        } else {
          title-style(title)
        } 
      ]
    )
    
    //*/
/*
  let title-block = block(
    width: 100%,
    fill: white,
    inset: (x: 10pt, y: 20pt),
    radius: (top-left: 5pt, top-right: 5pt, bottom-left: 0pt, bottom-right: 0pt),
    [
      #align(center)[
        #text(100pt,black,font:"DejaVu Sans Mono", weight: "bold", title)
      ]
    ]
  )
*/

    // body block
    let body-block = block(
      radius: (top-left: radius-top-left, top-right: radius-top-right, bottom-left: radius-bottom-left, bottom-right: radius-bottom-right),
      width: 100%,
      height: height-body,
      fill: bg-color,
      stroke: thickness-frame + color-frame, // Thickness and color
      inset: 70pt,
      text(60pt, white, body)
    )
    // stack title and body
    stack(dir: ttb, spacing: 30pt, body-block, title-block)
  })
}





// rgb(241, 158, 176).desaturate(40%)

#let content-box(body:none, height-body:33%, bg-color:white, color-frame:white, inset-width:70pt, thickness-frame: 2pt, radius-top-left: 0pt, radius-top-right: 0pt,radius-bottom-left: 0pt,radius-bottom-right: 0pt) = {

  block(
      radius: (top-left: radius-top-left, top-right: radius-top-right, bottom-left: radius-bottom-left, bottom-right: radius-bottom-right),
      width: 100%,
      height: height-body,
      fill: bg-color,
      stroke: thickness-frame + color-frame, // Thickness and color
      inset: inset-width,
      text(60pt, white, body)
    )
  
}


#let software-logo-box-try2(
  catch-phrase: none,
  citation: none,
  software-logo: none,
  software-logo-link: none,
  qr-code: none,
  media-height: 850pt,
  logo-ratio: 50,
  logo-height: none,
  qr-height: none,
  logo-y: 180pt,
  gap: 0pt,
  font: "Arial",
  x: 10%,
  y: 10%,
  width: auto,
  height: auto,
  background: white,
  color-frame: rgb("#1f4e79"),
  thickness-frame: 1pt,
  border-radius: 5pt,
  padding: 100pt,
  shadow: true,
  z-index: 10,
) = {

  let resolved-logo-height = if logo-height != none {
    logo-height
  } else {
    media-height * logo-ratio / 100
  }

  let resolved-qr-height = if qr-height != none {
    qr-height
  } else {
    media-height * (100 - logo-ratio) / 100
  }

  // Fits the image within target-height, clamped to whatever width is
  // actually available at this point (via layout()). Returns the sized
  // image content only -- no y-position math here, since stacking is
  // now handled by `stack()` below using each element's real size.
  let fixed-image(path, target-height, url: none) = {
    let content = layout(available => {
      let natural = measure(image(path))
      let aspect = natural.width / natural.height

      let height-constrained-width = target-height * aspect
      let (final-width, final-height) = if height-constrained-width <= available.width {
        (height-constrained-width, target-height)
      } else {
        (available.width, available.width / aspect)
      }

      box(
        width: final-width,
        height: final-height,
        clip: true,
        image(path, width: 100%, height: 100%),
      )
    })

    if url != none { link(url, content) } else { content }
  }

  place(
    top + left,
    dx: x,
    dy: y,
  )[

    #if shadow {
      place(dx: 2pt, dy: 2pt)[
        #box(width: width, height: height, fill: rgb(0, 0, 0, 30), radius: border-radius)
      ]
    }

    #box(
      width: width,
      height: height,
      fill: background,
      stroke: thickness-frame + color-frame,
      radius: border-radius,
      inset: padding
    )[
      #if catch-phrase != none and citation != none [
        #align(center)[#text(font: font, size: 80pt, weight: "bold", catch-phrase)
        #text(font: font, size: 40pt , weight: "bold", citation)]
      ]

      #if software-logo != none and qr-code != none {
        // Single place() at logo-y, containing both images stacked
        // top-to-bottom with `gap` spacing. stack() sizes itself from
        // each child's *actual* rendered height, so the QR code always
        // sits exactly `gap` below wherever the logo really ends --
        // whether the logo was height-limited or width-clamped.
        place(top + center, dy: logo-y)[
          #stack(
            dir: ttb,
            spacing: gap,
            fixed-image(software-logo, resolved-logo-height, url: software-logo-link),
            fixed-image(qr-code, resolved-qr-height),
          )
        ]
      }
    ]
  ]
}



#let software-logo-box-try(
  catch-phrase: none,
  citation: none,
  software-logo: none,
  software-logo-link: none,
  qr-code: none,
  media-height: 850pt,   // total vertical space shared between logo and QR code
  logo-ratio: 50,         // percent (0-100) of media-height given to the logo
  logo-height: none,      // optional manual override
  qr-height: none,        // optional manual override
  logo-y: 180pt,           // vertical offset of the logo from the top of the content area
  gap: 0pt,                // vertical gap between logo and QR code
  font: "Arial",
  x: 10%,
  y: 10%,
  width: auto,
  height: auto,
  background: white,
  color-frame: rgb("#1f4e79"),
  thickness-frame: 1pt,
  border-radius: 5pt,
  padding: 20pt,
  shadow: true,
  z-index: 10,
) = {

  let resolved-logo-height = if logo-height != none {
    logo-height
  } else {
    media-height * logo-ratio / 100
  }

  let resolved-qr-height = if qr-height != none {
    qr-height
  } else {
    media-height * (100 - logo-ratio) / 100
  }

  let qr-y = logo-y + resolved-logo-height + gap

  // Measures the image's natural aspect ratio and builds a box that
  // exactly matches target-height, with the width derived from that
  // aspect ratio -- so the box has no leftover whitespace the way a
  // fixed-width, fit:"contain" box did, and successive placements
  // butt up right against each other.
  let fixed-image(path, target-height, url: none) = context {
    let natural = measure(image(path))
    let aspect = natural.width / natural.height
    let target-width = target-height * aspect
    let pic = box(
      width: target-width,
      height: target-height,
      clip: true,
      image(path, width: 100%, height: 100%),
    )
    if url != none { link(url, pic) } else { pic }
  }

  place(
    top + left,
    dx: x,
    dy: y,
  )[

    #if shadow {
      place(dx: 2pt, dy: 2pt)[
        #box(width: width, height: height, fill: rgb(0, 0, 0, 30), radius: border-radius)
      ]
    }

    #box(
      width: width,
      height: height,
      fill: background,
      stroke: thickness-frame + color-frame,
      radius: border-radius,
      inset: 100pt
    )[
      #if catch-phrase != none and citation != none [
        #align(center)[#text(font: font, size: 80pt, weight: "bold", catch-phrase)
        #text(font: font, size: 40pt , weight: "bold", citation)]
      ]

      #if software-logo != none and qr-code != none {
        place(top + center, dy: logo-y, fixed-image(software-logo, resolved-logo-height, url: software-logo-link))
        place(top + center, dy: qr-y, fixed-image(qr-code, resolved-qr-height))
      }
    ]
  ]
}



#let software-logo-box(
  catch-phrase: none,
  citation: none,
  software-logo: none,
  software-logo-link: none,
  qr-code: none,
  media-height: 850pt,   // total vertical space shared between logo and QR code -- tune per poster
  logo-ratio: 50,        // percent (0-100) of media-height given to the logo; the rest goes to the QR code
  logo-height: none,     // optional manual override; if set, skips the ratio calculation
  qr-height: none,       // optional manual override; if set, skips the ratio calculation
  logo-y: 180pt,          // fixed vertical offset from the top of the box's content area
  gap: 0pt,               // optional vertical gap between logo and QR code
  font: "Arial",
  x: 10%,
  y: 10%,
  width: auto,
  height: auto,
  background: white,
  color-frame: rgb("#1f4e79"),
  thickness-frame: 1pt,
  border-radius: 5pt,
  padding: 100pt,
  shadow: true,
  z-index: 10,
) = {

  // Resolve the actual logo/QR heights: use manual overrides if given,
  // otherwise split media-height according to logo-ratio.
  let resolved-logo-height = if logo-height != none {
    logo-height
  } else {
    media-height * logo-ratio / 100
  }

  let resolved-qr-height = if qr-height != none {
    qr-height
  } else {
    media-height * (100 - logo-ratio) / 100
  }

  // QR code is placed directly after the logo (plus optional gap),
  // so there's no separate qr-y to hand-tune anymore.
  let qr-y = logo-y + resolved-logo-height + gap

  // Same technique as the institute-logo circle: a fixed-size box, the
  // image scaled via "contain" so it's never stretched or cropped, and
  // clip: true as a safety net so nothing can spill past that box.
  let fixed-image(path, target-height, url: none) = {
    let pic = box(
      width: 100%,
      height: target-height,
      clip: true,
      align(center + horizon, image(path, width: 100%, height: 100%, fit: "contain")),
    )
    if url != none { link(url, pic) } else { pic }
  }


  place(
    top + left,
    dx: x,
    dy: y,
  )[

    #if shadow {
      place(
        dx: 2pt,
        dy: 2pt,
      )[
        #box(
          width: width,
          height: height,
          fill: rgb(0, 0, 0, 30), 
          radius: border-radius,
        )
      ]
    }


    #box(
      width: width,
      height: height,
      fill: background,
      stroke: thickness-frame + color-frame,
      radius: border-radius,
      inset: padding
    )[
      // #align(center)[
        #if catch-phrase != none and citation != none [
          #align(center)[#text(font: font, size: 80pt, weight: "bold", catch-phrase)
          #text(font: font, size: 40pt , weight: "bold", citation)]
        ]

      #if software-logo != none and qr-code != none {

        place(top + center, dy: logo-y, fixed-image(software-logo, resolved-logo-height, url: software-logo-link))

         // QR Code, positioned right after the logo
        place(top + center, dy: qr-y, fixed-image(qr-code, resolved-qr-height))
      }
    ]
  ]
}


// this box works but not variable for scaling logo height vs qr code height is available

#let software-logo-box-no-scaling(
  catch-phrase: none,
  citation: none,
  software-logo: none,
  software-logo-link: none,
  qr-code: none,
  logo-height: 400pt, // fixed height for the logo -- tune per poster
  qr-height: 450pt,   // fixed height for the qr code -- tune per poster
  logo-y: 180pt, // fixed vertical offset from the top of the box's content area
  qr-y: 580pt,   // fixed vertical offset from the top of the box's content area
  font: "Arial",
  x: 10%,
  y: 10%,
  width: auto,
  height: auto,
  background: white,
  color-frame: rgb("#1f4e79"),
  thickness-frame: 1pt,
  border-radius: 5pt,
  padding: 20pt,
  shadow: true,
  z-index: 10,
) = {

  // Same technique as the institute-logo circle: a fixed-size box, the
  // image scaled via "contain" so it's never stretched or cropped, and
  // clip: true as a safety net so nothing can spill past that box.
  let fixed-image(path, target-height, url: none) = {
    let pic = box(
      width: 100%,
      height: target-height,
      clip: true,
      align(center + horizon, image(path, width: 100%, height: 100%, fit: "contain")),
    )
    if url != none { link(url, pic) } else { pic }
  }


  place(
    top + left,
    dx: x,
    dy: y,
  )[

    #if shadow {
      place(
        dx: 2pt,
        dy: 2pt,
      )[
        #box(
          width: width,
          height: height,
          fill: rgb(0, 0, 0, 30), 
          radius: border-radius,
        )
      ]
    }


    #box(
      width: width,
      height: height,
      fill: background,
      stroke: thickness-frame + color-frame,
      radius: border-radius,
      inset: 100pt
    )[
      // #align(center)[
        #if catch-phrase != none and citation != none [
          #align(center)[#text(font: font, size: 80pt, weight: "bold", catch-phrase)
          #text(font: font, size: 40pt , weight: "bold", citation)]
        ]

      #if software-logo != none and qr-code !=none{

        place(top + center, dy: logo-y, fixed-image(software-logo, logo-height, url: software-logo-link))

         // QR Code to
        place(top + center, dy: qr-y, fixed-image(qr-code, qr-height))
      }
    ]
  ]
}



#let neon-text(
  body, 
  fill-color: white, 
  stroke-color: rgb("#fab150"), // Default neon orange/yellow
  thickness: 2.5pt, 
  size: 50pt,
  font-style:"Arial",
  weight: "bold"
) = {
  text(
    size: size,
    weight: weight,
    fill: fill-color,
    font: font-style,
    // wrap the body in a box to force the single-line rule
    stroke: thickness + stroke-color,
    box(body)
  )
}


// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
// OLD Boxes
// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
#let software-logo-box-old(
  content,
  x: 10%,
  y: 10%,
  width: auto,
  height: auto,
  background: white, // 半透明白色
  color-frame: rgb("#1f4e79"), // 默认主题色
  thickness-frame: 1pt,
  border-radius: 5pt,
  padding: 20pt,
  shadow: true,
  z-index: 10,
) = {
 
  place(
    top + left,
    dx: x,
    dy: y,
  )[

    #if shadow {
      place(
        dx: 2pt,
        dy: 2pt,
      )[
        #box(
          width: width,
          height: height,
          fill: rgb(0, 0, 0, 30), 
          radius: border-radius,
        )
      ]
    }


    #box(
      width: width,
      height: height,
      fill: background,
      stroke: thickness-frame + color-frame,
      radius: border-radius,
      inset: 100pt
    )[
    
      #align(center)[
        #text(110pt,black,font:"Libertinus Serif", weight: "bold", content)
      ]
    
    ]
  ]
}



#let titled-box-bottom-old(title:none, body:none, height-body:33%) = {
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


// old titled-box-top function without titel font-size scaling
#let titled-box-top-old(title:none, body:none, height-body:33%) = {
  // title block
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
  
  // body block
  let body-block = block(
    width: 100%,
    height: height-body,
    fill: rgb(241, 158, 176),
    inset: 30pt,
    text(60pt, white, body)
  )

  // stack the blocks
  stack(
    dir: ttb, 
    spacing: 0pt, // enforce zero spacing
    title-block,
    body-block  
  )
}