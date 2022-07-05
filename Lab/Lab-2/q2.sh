#!/bin/sh

echo "Enter two numbers:"
read n1 n2

n1=`expr $n1 + $n2`
n2=`expr $n1 - $n2`
n1=`expr $n1 - $n2`

echo "After swapping"
echo "First number: $n1 Second number: $n2"
