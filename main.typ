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

#set heading(numbering: "1.1")
= 计算
== 角度单位
你是否曾
== 任意一元方程的计算

== 排列数组合数
注意到_$times,div$_上有黄色字体_nPr,nCr_，他们是排列数和组合数。对应关系如下，
$
  A^r_n=n P r\
  C^r_n=n C r
$
希望没有人在看到这个之前是傻傻带公式的。
== 常用常数
注意到_7_的上方用黄色字体写着_科学常数_使用_shift+7_进入界面，有多个菜单，以下是一些我认为常用的常数以及他们的位置。
#{
  show table.cell:it=>{
    if calc.rem(it.x,2)==0{
      strong(it)
    }
    else{
      it
    }
  }
  table(
    columns: 4,
    [普朗克常数],[通用常数1 $h$],[约化普朗克常数],[通用常数2 $planck$],
    [光速],[通用常数3 $c_0$],[真空介电常数],[通用常数4 $epsilon_0$],
    [真空磁导率],[通用常数5 $mu_0$],[万有引力常数],[通用常数7 $G$],
    [单位电荷],[电磁常数3 $e$],[阿伏伽德罗常数],[物理化学常数3k $N_A$],
    [玻尔兹曼常数],[物理化学常数4 $k$],[理想气体常数],[物理化学常数6 $R$]
  ) 
}
在带入数据的时候，如果忘记了这些常量的值，可以去找一找。

