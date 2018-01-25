#!/bin/bash

a=3455
let "a += 1"
echo "a = $a"
echo


b=${a/34/BB}
#b=${a/45/BB}

echo "b = $b"
# 将其声明为整数并没有什么卵用
declare -i b
echo "now b = $b"
echo

let "b += 1"
echo "add 1 now b = $b"
echo


c=BB68
echo "c = $c"
d=${c/BB/23}

echo "d=$d"
let "d += 1"
echo "add 1 now d = $d"
echo 


# 如果时未声明的变量呢？
echo "f = $f"            # f =
let "f += 1"             # 是否允许进行算术运算？
echo "f = $f"            # f = 1
echo                     # 未声明变量变为了一个整数。
#
# 然而……
let "f /= $undecl_var"   # 可以除以0么？
#   let: f /= : syntax error: operand expected (error token is " ")
# 语法错误！在这里 $undecl_var 并没有被设置为0！
#
# 但是，仍旧……
let "f /= 0"
#   let: f /= 0: division by 0 (error token is "0")
# 预期之中。


# 在执行算术运算时，Bash 通常将其空值的整数值设为0。
# 但是不要做这种事情！
# 因为这可能会导致一些意外的后果。


# 结论：上面的结果都表明 Bash 中的变量是弱类型的。

exit $?

