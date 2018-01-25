#!/bin/bash
# 读取文件 /etc/fstab

File=/etc/fstab

{
read line1
read line2
} < $File

echo "First line in $File is:"
echo "$line1"
echo
echo "Second line in $File is:"
echo "$line2"

exit 0

# 你知道如何解析剩下的行吗？
# 提示：使用 awk 或...
# Hans-Joerg Diers 建议：使用Bash的内建命令 set。
