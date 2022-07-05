#!/bin/sh

arr=(1 2 3 4 5 6)

for (( i=0; i<${#arr[@]}; i++ ))
do
if [ ${arr[$i]} -eq `expr 20051136 % 10` ]
then
echo "present."
echo "Location: `expr $i + 1`"
fi
done
