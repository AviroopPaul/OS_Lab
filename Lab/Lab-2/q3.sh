#!/bin/sh

echo "Enter two numbers"
read n1 n2

temp=$n2
n2=$n1
n1=$temp

echo "After swapping"
echo "First number: $n1 Second number: $n2"
