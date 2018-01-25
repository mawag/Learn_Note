shell中的参数可以以下方法处理，如下：

1, 原始直接处理

适用于命令行参数简单少的情况


参数|意义
---|---
$1 | 第一个参数
$2 | 第二个参数
$n | 第n个参数
$# | 参数个数
$@ | 参数列表数组
$* | 参数字符串

2, getopts

变量

|变量|描述|
|-|-|
OPTIND|存放待处理的索引到下一个参数
OPTAGE|此变量设置为通过发现一个选择任何参数getopts。它还包含一个未知的选项的选项标志
OPTERR|（值0或1）表示是否击应显示由生成的错误消息getopts内建


```
getopts OPTSTRING VARNAME [ARGS...]
```

> getopts 的设计目标是在循环中运行，每次执行循环，`getopts`就检查下一个命令行参数，并判断它是否合法。即检查参数是否以`-`开头，后面跟一个包含在`options`中的字母。如果是，就把匹配的选项字母存在指定的变量`variable`中，并返回退出状态0；如果`-`后面的字母没有包含在`options`中，就在`variable`中存入一个`?`，并返回退出状态0；如果命令行中已经没有参数，或者下一个参数不以`-`开头，就返回不为0的退出状态。


```bash
#!/bin/bash
while getopts "a:bc" option
do 
    case "$option" in
        a)
            echo "option:a, value $OPTARG"
            echo "next arg index:$OPTIND";;
        b)
            echo "option:b"
            echo "next arg index:$OPTIND";;
        c)
            echo "option:c"
            echo "next arg index:$OPTIND";;
        \?)
            echo "Usage: args [-a n] [-b] [-c]"
            exit 1;;
    esac
done

echo "*** do something now ***"
```


注：

1. getopts 允许把选项堆叠在一起（如 -ms）
2. 如要带参数，须在对应选项后加 :（如h后需加参数 h:ms）。此时选项和参数之间至少有一个空白字符分隔，这样的选项不能堆叠。
3. 如果在需要参数的选项之后没有找到参数，它就在给定的变量中存入`?`，并向标准错误中写入错误消息。否则将实际参数写入特殊变量 ：`OPTARG`
4. 另外一个特殊变量：`OPTIND`，反映下一个要处理的参数索引，初值是 1，每次执行 getopts 时都会更新。

