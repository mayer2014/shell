#!/bin/bash
echo "Enter [y/n]:"
read a
case $a in
    y|Y|Yes|YES|yes) echo "you enter $a"
    ;;
    n|N|NO|no|No) echo "you enter $a"
    ;;
    *) echo "error"
    ;;
esac
