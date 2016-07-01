#/bin/bash
echo -n "login:" 
read name
echo -n "password:"
read -s passwd
if [ $name = "root" -a $passwd = "root" ];then
echo "the host and password is right!"
else echo "input is error!"
fi
