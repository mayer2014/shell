#!/bin/bash
#我是注释
#我也是注释
hello="Hello World !"
readonly hello
echo $hello
echo ${#hello}
echo ${hello:1:4}
for file in `ls /usr/web/study`
do
echo $file
done
echo `expr index "$hello" or`
array=(1 2 3)
array[3]=4
echo ${array[2]}
echo ${array[@]}
echo ${#array[@]}
echo ${#array[2]}
echo "Shell 传递参数实例！";
echo "执行的文件名：$0";
echo "第一个参数为：$1";
echo "第二个参数为：$2";
echo "第三个参数为：$3";
echo "参数个数为：$#";
echo "传递的参数作为一个字符串显示：$*";
echo "-- \$* 演示 ---"
for i in "$*";
do
echo $i
done
echo "-- \$@ 演示 ---"
for i in "$@"; do
echo $i
done
val=`expr 2 + 2`
echo "两数之和为 : $val"
echo -e "OK! \n" # -e 开启转义
echo "It it a test"
echo -e "OK! \c" # -e 开启转义 \c 不换行
echo "It is a test"
echo `date`
num1=$[2*3]
num2=$[1+5]
if test $[num1] -eq $[num2]
then
    echo '两个数字相等!'
else
    echo '两个数字不相等!'
fi
int=1
while(( $int<=5 ))
do
    echo $int
    let "int++"
done
echo '输入 1 到 4 之间的数字:'
echo '你输入的数字为:'
read aNum
case $aNum in
    1)  echo '你选择了 1'
    ;;
    2)  echo '你选择了 2'
    ;;
    3)  echo '你选择了 3'
    ;;
    4)  echo '你选择了 4'
    ;;
    *)  echo '你没有输入 1 到 4 之间的数字'
    ;;
esac
funWithReturn(){
    echo "这个函数会对输入的两个数字进行相加运算..."
    echo "输入第一个数字: "
    read aNum
    echo "输入第二个数字: "
    read anotherNum
    echo "两个数字分别为 $aNum 和 $anotherNum !"
    return $(($aNum+$anotherNum))
}
funWithReturn
echo "输入的两个数字之和为 $? !"
cat << EOF
欢迎来到
菜鸟教程
www.runoob.com
EOF
