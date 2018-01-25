#!/bin/bash

key='no value yet'
while true;do
    clear
    echo "Bash Extra Keys Demo. Keys to try:"
    echo
    echo "* Insert, Delete, Home, End, Page_Up and Page_Down"
    echo "* The four arrow keys"
    echo "* Tab, enter, escape, and space key"
    echo "* The letter and number keys, etc."
    echo
    echo "    d = show date/time"
    echo "    q = quit"
    echo "================================"
    echo

    if [ "$key" = $'\x1b\x4f\x48' ];then
        key=$'\x1b\x5b\x31\x7e'
        #引用字符扩展结构
    fi

    if [ "$key" = $'\x1b\x4f\x46' ]; then
        key=$'\x1b\x5b\x34\x7e'
    fi

    case "$key" in
        $'\x1b\x5b\x32\x7e')  # 插入
            echo Insert Key;;
        $'\x1b\x5b\x33\x7e')  # 删除
            echo Delete Key;;
        $'\x1b\x5b\x31\x7e')  # 数字7上的Home键
            echo Home Key;;
        $'\x1b\x5b\x34\x7e')  # 数字1上的End键
            echo End Key;;
        $'\x1b\x5b\x35\x7e')  # 上翻页
            echo Page_Up;;
        $'\x1b\x5b\x36\x7e')  # 下翻页
            echo Page_Down;;
        $'\x1b\x5b\x41')  # 上箭头
            echo Up arrow;;
        $'\x1b\x5b\x42')  # 下箭头
            echo Down arrow;;
        $'\x1b\x5b\x43')  # 右箭头
            echo Right arrow;;
        $'\x1b\x5b\x44')  # 左箭头
            echo Left arrow;;
        $'\x09')  # 制表符
            echo Tab key;;
        $'\x1b\x4f\x48')
            echo Home Key;;
        $'\x1b\x4f\x46')
            echo End Key;;
        $'\x0a')  # 回车
            echo Enter key;;
        $'\x1b')  # ESC
            echo Esc Key;;
        $'\x20')  # 空格
            echo Space key;;
        d)
            date;;
        q)
            echo Time to quit...
            echo
            exit 0
            ;;
        *)
            echo your pressed \'"$key"\'
            ;;
        esac

        echo 
        echo "========================================="

        unset K1 K2 K3
        read -s -N1 -p "Press a key:"
        K1="$REPLY"
        read -s -N2 -t 0.001
        K2="$REPLY"
        read -s -N1 -t 0.001
        K3="$REPLY"
        key="$K1$K2$K3"

    done

    exit $?


