#!/bin/sh

arr=(1 3 5 9)
n=${#arr[*]}

sum=0

for i in "${arr[@]}"
do
sum=`expr $sum + $i`
done

echo "Sum = $sum"

