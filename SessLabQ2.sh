#!/bin/bash

echo "Enter a number"
read n


echo "Enter your option: "
echo "1 -> Palindrome Number"
echo "2 -> Perfect Number"
echo "3 -> Armstrong"
echo "4 -> Even Perfect Square"
read option


case $option in
1) temp=$n
    sum=0
    while[ $n -gt 0 ] 
    do
    r=`expr $n % 10`
    sum=`expr ($sum \* 10) + $r`
    n=`expr $n / 10`
    done
    if[ $n -eq $temp ]
    then
    echo "It is a palindrome"
    fi ;;

2) echo "Perfect : `expr $n1 - $n2`";;
3) echo "Armstrong : `expr $n1 \* $n2`";;
4) echo "Even Perfect Square : `expr $n1 / $n2`";;
*) echo "Number is none of the above."
esac
