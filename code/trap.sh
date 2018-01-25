#!/bin/bash

# 处理信号
trap "do_exit" 2 3 15

RUN_APP_NUM=0
# APP_PID
# APP_NAME
# APP_RUNCOMMID
# APP_COLOR

sum_app=0
declare -a app_id


function do_exit(){
    echo "Will Over"
    echo "app have $sum_app"
    echo "${app_id[0]} and ${app_id[1]}"
	
    for appid in ${app_id[@]} 
    do
        echo "kill ${appid}"
        kill "${appid}"
    done
    wait
    echo "----------End------------"
}

function sum_echo(){
    local id=$1
    app_id[$sum_app]=$id
    echo "Start App id= ${app_id[${sum_app}]}"
    let sum_app++
}

echo "PID of this script: $$"
echo "Father PID is: $PPID"
echo

bash pid.sh 10 &
sum_echo $!

echo "---------------"
bash pid.sh 12 &
sum_echo $!
echo "--------------"

wait
echo "OOOOOOOver------------"