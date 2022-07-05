#!/bin/sh
echo "Enter N: "
read n

k=`expr $n / 2`
for(( i=1; i<=n; i++ ))
do
count=0
for(( j=2; j<=`expr $i / 2`; j++ ))
do
c=`expr $i % $j`
if [ $c -eq 0 ]
then
count=`expr $count + 1`
break
fi
done
if [ $count -eq 0 ] && [ $i -ne 1 ]
then
echo -n "$i "
fi
done
echo
