
// PPT 盒子功能
#import "@preview/showybox:2.0.3": showybox

#let default_box(body, title: content, theme_dark : rgb("#23373b"), theme_light: rgb("#fafafa")) = (
    showybox(
        frame: (
            title-color: theme_dark, 
            body-color: theme_light, 
            border-color: theme_dark,
            thickness: 2pt,
            radius: 10pt
        ),
        title-style: (
            weight: "bold"
        ),
        title: title,
    )[#body]
)

#let leading_box(body, title: content, theme_dark : rgb("#23373b"), theme_light: rgb("#fafafa")) = (
    showybox(
        frame: (
            title-color: theme_dark, 
            body-color: theme_light, 
            border-color: theme_dark,
            thickness: 0pt,
        ),
        title-style: (
            weight: "bold",
            color: white,
            align: center,
            sep-thickness: 0pt,
            boxed-style: (
                anchor: (x: center, y: horizon),
                radius: 10pt
            )
        ),
        title: [#box(width: 1fr)[#title]],
    )[#body]
)

#let frame_box(body, title: content, theme_dark : rgb("#23373b"), theme_light: rgb("#fafafa")) = (
    showybox(
        frame: (
            title-color: theme_dark, 
            body-color: theme_light, 
            border-color: theme_dark,
            thickness: 2pt,
            radius: 10pt
        ),
        title-style: (
            weight: "bold",
            color: white,
            align: center,
            sep-thickness: 0pt,
            boxed-style: (
                anchor: (x: left, y: horizon),
                radius: 10pt
            )
        ),
        sep: (
            thickness: 0pt,
        ),
        title: [#title],
    )[#body]
)

#let focus_single_box(body, width: 100%, theme_dark : rgb("#23373b"), theme_light: rgb("#fafafa")) = (
    align(center,
        showybox(
            frame: (
                body-color: theme_dark, 
                border-color: theme_dark,
                thickness: 2pt,
                radius: 10pt
            ),
            body-style: (
                align: center,
                color: white
            ),
            width: width
        )[
            #set text(weight: "bold")
            #body
        ]
    )
)

#let plain_single_box(body, width: 100%, theme_dark : rgb("#23373b"), theme_light: rgb("#fafafa"), content_align: center) = (
    align(center,
        showybox(
            frame: (
                body-color: theme_light, 
                border-color: theme_dark,
                thickness: 2pt,
                radius: 10pt,
                inset: 10pt
            ),
            body-style: (
                align: content_align,
                color: black
            ),
            width: width
        )[
            #body
        ]
    )
)
