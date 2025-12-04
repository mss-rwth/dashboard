#let _state-poster-theme = state("poster-theme", (
    "body-box-args": (
        inset: 0.6em,
        width: 100%,
    ),
    "body-text-args": (:),
    "heading-box-args": (
        inset: 0.6em,
        width: 100%,
        fill: rgb(50, 50, 50),
        stroke: rgb(25, 25, 25),
    ),
    "heading-text-args": (
        fill: white,
    ),
))

#let uni-fr = (
    "body-box-args": (
        inset: 0.6em,
        width: 100%,
    ),
    "body-text-args": (:),
    "heading-box-args": (
        inset: 0.6em,
        width: 100%,
        fill: rgb(142, 186, 229),//"#1d154d"),
        stroke: rgb(142, 186, 229),
    ),
    "heading-text-args": (
        fill: white,
    ),
)


#let uni-fr-middle-yellow = (
    "body-box-args": (
        inset: 0.6em,
        width: 100%,
        fill: rgb(250, 190, 80),
        stroke: rgb(250, 190, 80)
    ),
    "body-text-args": (:),
    "heading-box-args": (
        inset: 0.6em,
        width: 100%,
        fill: rgb(250, 190, 80),//"#1d154d"),
        stroke: rgb(250, 190, 80),
    ),
    "heading-text-args": (
        fill: white,
    ),
)

#let uni-fr-middle-white-pink = (
    "body-box-args": (
        inset: 0.6em,
        width: 100%,
        stroke: rgb(241, 158, 176)
    ),
    "body-text-args": (:),
    "heading-box-args": (
        inset: 0.6em,
        width: 100%,
        fill: rgb(241, 158, 176),//"#1d154d"),
        stroke: rgb(241, 158, 176),
    ),
    "heading-text-args": (
        fill: white,
    ),
)


#let uni-fr-middle-pink = (
    "body-box-args": (
        inset: 0.6em,
        width: 100%,
        fill: rgb(241, 158, 176),
        stroke: rgb(241, 158, 176)
    ),
    "body-text-args": (
        fill:white
    ),
    "heading-box-args": (
        inset: 0.6em,
        width: 100%,
        fill: rgb(241, 158, 176),//"#1d154d"),
        stroke: rgb(241, 158, 176),
    ),
    "heading-text-args": (
        fill: white,
    ),
)

#let uni-fr-bottom = (
    "body-box-args": (
        inset: 0.6em,
        width: 100%,
    ),
    "body-text-args": (:),
    "heading-box-args": (
        inset: 0.6em,
        width: 100%,
        fill: rgb(250, 190, 80),//"#1d154d"),
        stroke: rgb(250, 190, 80),
    ),
    "heading-text-args": (
        fill: white,
    ),
)





#let psi-ch = (
    "body-box-args": (
        inset: (x: 0.0em, y: 0.6em),
        width: 100%,
        stroke: none,
    ),
    "body-text-args": (:),
    "heading-box-args": (
        inset: 0em,
        width: 100%,
        stroke: none,
    ),
    "heading-text-args": (
        fill: rgb("#dc005a"),
        weight: "bold",
    ),
)

#let uq = (
    "body-box-args": (
        inset: 0.6em,
        width: 100%,
        stroke: none,
        fill: rgb("#efedea")
    ),
    "body-text-args": (:),
    "heading-box-args": (
        inset: 0.6em,
        width: 100%,
        fill: rgb("#e6e2e0"),
    ),
    "heading-text-args": (
        fill: gradient.linear(rgb("#51247a"), rgb("#962a8b")),
    ),
    "title-text-args": (
        fill: gradient.linear(rgb("#51247a"), rgb("#962a8b")),
    )
)

#let update-theme(..args) = {
    for (arg, val) in args.named() {
        _state-poster-theme.update(pt => {
            pt.insert(arg, val)
            pt
        })
    }
}

#let set-theme(theme) = {
    _state-poster-theme.update(pt => {
        pt=theme
        pt
    })
}
