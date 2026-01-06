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
#show math.equation.where(block: false):math.display
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
本文以 *卡西欧fx-991CN X* 为例，写一些在考试、做题之中还算实用的一些操作，
希望看此文的能至少会一些基本的操作，例如如何使用_shift alpha_按键。

#figure(
  image("image/991cnx.jpg",width: 30%),
  caption: "CASIO fx-991CN X",
)

#set heading(numbering: "1.1")
= 计算
== 角度单位
你是否曾疑惑过自己的计算器$cos(pi)=0.998dots.c$而不是0，
大概率是你角度单位设置错误。
#align(center)[
#table(
  align: center+horizon,
  columns: 2,
  stroke: none,
  [#figure(
    image("image/degree.jpg",width: 70%),
    caption: "角度模式"
  )],
  [#figure(
    image("image/radian.jpg",width: 70%),
    caption: "弧度模式"
  )]
)
]
注意到上方两张图有何不同了吗，看到显示屏的第一排，
一个显示#text(fill: white)[#highlight(fill: black,top-edge: 1.05em,extent: 0.1em)[ *D* ]]
一个显示#text(fill: white)[#highlight(fill: black,top-edge: 1.05em,extent: 0.1em)[ *R* ]]，
分别代表角度值和弧度制。在角度制下$cos(pi degree)=0.998dots.c$

那么该如何切换角度值和弧度制呢，开机键的左侧有一个按钮，
用黄色字体标注了_设置_，先按下_shift_再按下该键，
注意到进入的菜单第二项就是角度单位，按_2_进入子菜单修改即可。

== 任意一元方程的计算
以$-e^(x) (ln(x)+1/ln(x))=3$为例（应该没有什么东西能算出来解析解吧）
#figure(
  image("image/function.svg",width:  60%),
  caption: "Geogebra绘制函数图像"
)
借助Geogebra可以算出$x_1=0.1043,x_2=0.40133$，在考试中，我们肯定没有这种工具，那么我们该如何使用计算器解出该方程的数值解呢。

_CALC_上方有一个黄色的_SOLVE_和一个红色的_=_，我们主要使用这两个按键来计算方程。将方程输入计算器，
按下_SOLVE_，在此界面输入X的初始值，计算器会使用牛顿法计算方程的解析解。
#align(center)[
#table(
  align: center+horizon,
  columns: 2,
  stroke: none,
  [#figure(
    image("image/solve1.jpg",width: 70%),
    caption: "初始值设定"
  )],
  [#figure(
    image("image/solve2.jpg",width: 70%),
    caption: "一次未能计算出结果"
  )],
  [#figure(
    image("image/solve3.jpg",width: 70%),
    caption: "方程结果1"
  )],
  [#figure(
    image("image/solve4.jpg",width: 70%),
    caption: "方程结果2"
  )]
)
]
计算结果中除了$x$，还有$L-R$代表此时方程左右两端的差值，如果很大的话，代表此时并不是方程的根，需要重新选择初始值。
要想得到多个根方程的其他根，也需要重新选取初始值。

== 分数转化成小数
在使用计算器计算的时候，常常出现结果是 $1723/1260$ 之类的分数，而有的时候需要小数以便判断大小，列写答案。只需按下计算器上的$"S"<=>"D"$即可。

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

= 复数
= 基数
= 矩阵
= 向量
= 统计
== 常用统计量计算
假设有数据1.2, 2.4, 1.8, 1.5, 1.6, 1.7, 0.8，需要计算它们的平均值，方差。

切换模式为_统计_选择_单变量统计_在表格中输入数据，按下_OPTN_，选择_单变量计算_，
你会发现#context[$overline(x),sum x,sum x^2,sigma^2,sigma,S^2,S$]均帮你计算完成了。
#align(center)[
#table(
  align: center+horizon,
  columns: 2,
  stroke: none,
  [#figure(
    image("image/stat1.jpg",width: 70%),
    caption: "表格中输入数据"
  )],
  [#figure(
    image("image/stat2.jpg",width: 70%),
    caption: "计算结果"
  )]
)
]
= 表格
= 方程
