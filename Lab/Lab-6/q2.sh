#!/bin/bash

arr=(1 2 3 4 5);

max=0
min=100

for i in "${arr[@]}"
do 
if [ $i -gt $max ]
then
max=$i
fi
done

for j in "${arr[@]}"
do 
if [ $j -lt $min ]
then
min=$j
fi
done

echo "Max= $max"
echo "Min= $min"
