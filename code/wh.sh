#!/bin/bash

# whois server
DEF_SERVER=
CN_SERVER=whois.cnnic.net.cn
ORG_SERVER=whois.publicinterestregistry.net
HK_SERVER=whois.apnic.net
ME_SERVER=whois.nic.me
COM_SERVER=whois.markmonitor.com
VIP_SERVER=whois.nic.vip


E_NOARGS=75


if [ -z "$1" ]
then
    echo "Usage: `basename $0` [domain-name]"
    echo "Support .com .cn .org .hk .vip .me"
    echo "Version 0.1"
    exit $E_NOARGS
fi

# 检查脚本名，访问对应服务器进行查询。
case ${1#*.} in
    "cn"    ) server=$CN_SERVER;;
    "org"   ) server=$ORG_SERVER;;
    "hk"    ) server=$HK_SERVER;;
    "me"    ) server=$ME_SERVER;;
    "com"   ) server=$COM_SERVER;;
    "vip"   ) server=$VIP_SERVER;;
    *       ) server="whois.nic.${1#*.}";;
esac

#echo whois $1 -h $server
whois $1 -Hh $server

exit $?
