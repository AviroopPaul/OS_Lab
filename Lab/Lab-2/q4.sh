#!/bin/sh

echo "Enter two numbers"
read n1 n2

if [ $n1 -gt $n2 ]
then
echo "$n1 is greater than $n2"

elif [ $n2 -gt $n1 ]
then
echo "$n2 is greater than $n1"

else
echo "Both are equal"

fi
