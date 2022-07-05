#!/bin/sh

echo "Enter a number: "
read n

firstTerm=0
sum=0
secondTerm=1
echo -n "$firstTerm, $secondTerm,"
for((i=2; i<=n; i++))
do
sum=`expr $firstTerm + $secondTerm`
firstTerm=$secondTerm
secondTerm=$sum
i=`expr $i + 1`
echo -n " $sum, "
done
echo
