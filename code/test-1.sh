#!/bin/bash

#var=baidu.com
#echo ${var#*.}

stringZ=abcABC123AVFG

echo `expr match "$stringZ" 'abc[A-Z]*.2'`
echo `expr "$stringZ" : 'abc[A-Z]*.2'`

echo $stringZ
echo

echo `expr index "$stringZ" B12`
echo `expr index "$stringZ" 1C`
echo


echo `expr length $stringZ`

