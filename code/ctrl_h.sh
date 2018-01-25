#!/bin/bash
# 在字符串中嵌入 Ctrl-H

a=""                  # 两个退格符 Ctrl-H
                          # 在 vi/vim 中使用 Ctrl-V Ctrl-H 来键入

echo "abcdef"             # abcdef
echo
echo -n "abcdef$a "       # abcd f
#                ^              ^ 末尾有空格退格两次的结果
echo
echo -n "abcdef$a"        # abcdef
#                                ^ 末尾没有空格时为什么退格无效了？
                          # 并不是我们期望的结果。
echo; echo
# Constantin Hagemeier 建议尝试一下：
# a=$'\010\010'
# a=$'\b\b'
# a=$'\x08\x08'
# 但是这些并不会改变结果。

########################################

# 现在来试试这个。

rubout=""       # 5个 Ctrl-H
echo -n "12345678"
sleep 2
echo -n "$rubout"
sleep 2
