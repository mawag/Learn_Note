#!/bin/bash

# 4.2

echo


# 赋值
a=897
echo "a = $a"

#let
let a=15+4
echo "now a = $a "

echo



# for 中 赋值

echo -n "Values a is: "
for a in 7 8 9 12
do
    echo -n "$a "
done

echo

# read 表达式赋值
echo -n "Enter a:"
read a
echo "and now a = $a"
echo

exit 0





