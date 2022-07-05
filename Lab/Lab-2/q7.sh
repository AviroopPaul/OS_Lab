#!/bin/sh

echo "Enter two numbers: "
read n1 n2
echo "Enter your option: "
echo "1 -> Addition"
echo "2 -> Subtraction"
echo "3 -> Multiplication"
echo "4 -> Division"
echo "5 -> Modulus"
read option

case $option in
1) echo "Sum : `expr $n1 + $n2`";;
2) echo "Difference : `expr $n1 - $n2`";;
3) echo "Multiply : `expr $n1 \* $n2`";;
4) echo "Divide : `expr $n1 / $n2`";;
5) echo "Modulus : `expr $n1 % $n2`";;
*) echo "Incorrect option selected!"
esac



