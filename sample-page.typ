#import "/book.typ": book-page

#import "include/showbox.typ": frame_box
#import "@preview/rubby:0.10.2": get-ruby

#show: book-page.with(title: "Hello, typst")

= Hello, typst

Sample page

#let ruby = get-ruby(
  size: 0.5em,         // Ruby font size
  dy: 0pt,             // Vertical offset of the ruby
  pos: top,            // Ruby position (top or bottom)
  alignment: "center", // Ruby alignment ("center", "start", "between", "around")
  delimiter: "|",      // The delimiter between words
  auto-spacing: true,  // Automatically add necessary space around words
)

// Ruby goes first, base text - second.
#ruby[ふりがな][振り仮名]

Treat each kanji as a separate word:
#ruby[とう|きょう|こう|ぎょう|だい|がく][東|京|工|業|大|学]

#frame_box(title: [Treat each kanji as a separate word:])[
#box()

#ruby[とう|きょう|こう|ぎょう|だい|がく][東|京|工|業|大|学]

]

#let color_arr = (rgb("#1f77b4"), rgb("#ff7f0e"), rgb("#2ca02c"), rgb("#d62728"), rgb("#9467bd"), rgb("#8c564b"), rgb("#e377c2"), rgb("#7f7f7f"), rgb("#bcbd22"), rgb("#17becf"))

#let hl(body, idx: 0) = {
  // set text(white)
  // set align(center)
  // rect(
  //   fill: fill,
  //   inset: 8pt,
  //   radius: 4pt,
  //   [*Warning:\ #body*],
  // )
  set text(fill: color_arr.at(idx))
  
  body
}

12#hl(idx: 0)[122]

#set par(spacing: 20pt)

#figure(
  table(
    inset: 0.75em,
    stroke: gray,
    columns: (auto,) + 2 * (1fr, ), rows: 3,
    [], [肯定], [未然型],
    [现在], [かっこ#hl(idx: 0)[いい]], [かっこ#hl(idx: 1)[よくない]],
    [过去型], [かっこ#hl(idx: 2)[よかった]], [かっこ#hl(idx: 1)[よくな]#hl(idx: 2)[かった]],
  )
)

$
  y=a x+b
$

```cpp
#include <iostream>
int main(){
  // 中文
  std::cout << "hello world" << std::endl;
  return 0;
}
```

#text(weight: "bold")[你好]
#text(weight: "regular")[你好]
#text(weight: "thin")[你好]
