#!/bin/bash

a=12
b=$a
echo "a=$a ,b=$b"
echo

#命令替换
a=`date +%c`
echo $a

#  注意在命令替换结构中包含感叹号(!)在命令行中使用将会失效，
#+ 因为它将会触发 Bash 的历史(history)机制。
#  在shell脚本内，Bash 的历史机制默认关闭。

a=`ls -l`
echo "-----------------------------------------"
echo "不带引号引用，将会移除所有的制表符与分行符"
echo 
echo $a 
echo "-----------------------------------------"
echo "引号引用变量将会保留空白符"
echo 
echo "$a"
echo

exit 0



