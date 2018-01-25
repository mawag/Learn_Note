shell中文件读取时很经常的事情，逐行读取，常用如下代码来处理。


```bash
while line=$(line)
do 
    echo "LINE:"$line
done < "${file}"
```
```bash
while read line 
do
    echo "LINE:"$line
done < "${file}"
```
```bash
cat "${file}" | while read line
do
    echo "LINE:"$line
done
```
但是，在处理结尾不是`0x0a`(`\n`)结尾的行，无法正常读取到文本信息。

可以提供的解决方案有如下几个，


处理文件，结尾加上`0x0a`或者`\n`

判断文件有没有用`0x0a`结尾可以用正则匹配，但是，测试有点问题，没办法正常匹配到。

这里采用的是判断行数是不是正常的行数

```bash
local line_number=0
local line_n
#line_n=$(grep -c "" ${file})
line_n=$(wc -l "${file}")
while read line; do
    let line_number++
done < "${file}"
if [[ ${line_number} -eq ${line_n} ]]; then
    echo "" >> ${file}
fi
```

2, 

```bash
while read myline 
do
    echo "LINE:"$myline
done < <(grep ""  "${file}")
```

3,

```bash
local read_more=true
while $read_more ; do
    read -r line || read_more=false
    echo ${line}
done < "$1"
```



