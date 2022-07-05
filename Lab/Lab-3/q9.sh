#!/bin/sh
echo "Enter no of rows"
read n
k=`expr $n - 1`
for (( i=1; i<=n; i++))
do
for(( k=i; k<n; k++ ))
do
echo -n " "
done
for(( j=1; j<=i; j++ ))
do
echo -n "1 "
done

echo
done
