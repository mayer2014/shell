#/bin/bash
echo "enter a file name:"
read a
if test  -e ./$a 
    then echo "the file is exist!"
else echo "the file is not exist!"
fi
b=$(ls -l $a | awk '{print $5}')
if test $b -ge 1
    then tar zcvf $a.tar.gz ./$a
fi
