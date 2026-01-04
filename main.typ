#import "@preview/cjk-unbreak:0.2.1": remove-cjk-break-space 
#import "@preview/i-figured:0.2.4"
#show figure: i-figured.show-figure
#show: remove-cjk-break-space 
#set text(font: ("Times New Roman","SimSun"),lang: "zh",region: "cn") //正文字体
#set document(title:"计算器使用教程")
#show heading:set text(font: ("Times New Roman","SimHei")) //小标题黑体
#show heading: set block(above: 1.2em,below: 1.2em) //小标题与正文间距
#show strong: set text(font: ("Times New Roman","SimHei"),weight: "bold") //加粗字体
#show emph:set text(font:("Times New Roman","KaiTi"))//斜体字体
#set par(first-line-indent: (amount: 2em,all:true),leading: 1.2em,spacing: 1.5em)
#align(center+horizon)[
  #text(font:"SimHei",size: 30pt)[
    常用计算器使用方法
  ]

  #text(font: "STSong",size: 15pt)[
    #datetime.today().display()
    ]
]

#pagebreak()

#heading(depth: 1,numbering: none)[
  0 前言
]
本文以*卡西欧fx-991CN X*为例，写一些在考试、做题之中还算实用的一些操作，
希望看此文的能至少会一些基本的操作，例如如何使用_shift alpha_按键。

#figure(
  image("image/991cnx.jpg",width: 30%),
  caption: "CASIO fx-991CN X",
)

#set heading(numbering: "1")