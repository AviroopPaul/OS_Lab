#!/bin/bash
echo "no of elements: "
read n
i=0
while [ $i -lt $n ]
do
read arr[$i]
i=`expr $i + 1`
done

echo ${arr[*]}

echo "Enter index value: "
read val

length=${#arr[@]}

echo "Elements from the given position : ${arr[*]:$val}"
echo "Elements from the given position upto 3 more position : ${arr[*]:$val:`expr $val + 3`}"

unset arr[$val]
echo ${arr[@]}


