一般情况下，每个 Unix/Linux 命令运行时都会打开三个文件：


- 标准输入文件(`/dev/stdin`)：stdin的文件描述符为0，Unix程序默认从stdin读取数据。
- 标准输出文件(`/dev/stdout`)：stdout 的文件描述符为1，Unix程序默认向stdout输出数据。
- 标准错误文件(`/dev/stderr`)：stderr的文件描述符为2，Unix程序会向stderr流中写入错误信息。


输入输出重定向：


`>` `>>` 

将一条命令执行结果（标准输出，或者错误输出，本来都要打印到屏幕上面的） 重定向其它输出设备（文件，打开文件操作符，或打印机等等）

`<` `<<` 

将命令默认从键盘获得的输入，改成从文件，或者其它打开文件以及设备输入。执行这个命令，将标准输入0，与文件或设备绑定。将由它进行输入。


exec绑定重定向

```
#exec 文件描述符[n] <或> file或文件描述符或设备
# eg:
exec 6>&1
# 将标准输出与fd 6绑定
```
