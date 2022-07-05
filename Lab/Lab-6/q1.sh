#!/bin/bash

arr=(1 3 5 9);
n=${#arr[*]};
echo ${arr[*]}
echo "Reversed array: "
for (( i=n-1; i>=0; i-- ))
do
echo -n "${arr[i]} "
done
echo
