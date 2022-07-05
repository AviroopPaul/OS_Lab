#!/bin/sh

echo "Enter a number"
read n
sum=0
for(( i=1; i<n; i++ ))
do
rem=`expr $n % $i`
if [ $rem -eq 0 ]
then
sum=`expr $sum + $i`
fi
done
if [ $sum -eq $n ]
then
echo "It is a perfect number."
else
echo "Not a perfect number."
fi
