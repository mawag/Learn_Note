#!/bin/bash

#参数
MINPARAMS=10

echo
echo "\$0 = \"$0\""
echo "file name = \"`basename $0`\""

echo

if [ -n "$1" ]
then
    echo "#1 = $1"
fi

if [ -n "$4" ]
then
    echo "#4 = $4"
fi

if [ -n "${10}" ]
then
    echo "#10 = ${10}"
fi

echo "-------------------------------------"

echo "$*"

if [ $# -lt "$MINPARAMS" ]
then
    echo
    echo "This script needs at least $MINPARAMS command-line arguments!"
fi


echo "------------------------------------"

args=$#
#lastarg=${!args}
lastarg=${!#}
echo "args = $args"
echo "lastarg = $lastarg"
variable1_=$10_

#echo
#critical_argument01=$variable1_
#echo "critical_argument01=$critical_argument01"
#variable1=${variable1_/_/}
echo
DefaultVal=2333333
value=${11:-$DefaultVal}
echo "value11 = $value"
value=${10:-$DefaultVal}
echo "value10 = $value"
if [ -z $11 ]
then
    echo "------------------"
    exit $E_MISSING_POS_PARAM
fi






exit 0
