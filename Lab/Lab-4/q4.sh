#!/bin/sh

echo "Enter a number"
read n

if [ `expr $n % 5` -eq 0 ] 
then
echo "Divisible by 5"
elif [ `expr $n % 11` -eq 0 ]
then
echo "Divisible by 11"
else
echo "Not divisble by 11 or 5"
fi
