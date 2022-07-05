#!/bin/sh

echo "Enter three sides: "
read a b c

if [ `expr $a + $b` -gt $c ] && [ `expr $b + $c` -gt $c ] &&  [ `expr $a + $c` -gt $b ]
then
echo "Valid Triangle"
else
echo "Not a valid triangle"
fi

s1=` echo "scale=3; ( $a + $b + $c ) / 2" | bc -l`
echo "S1=$s1"
p1=` echo "scale=5; $s1 * ( $s1 - $a ) * ( $s1 - $b ) * ( $s1 - $c )" | bc -l`
area=` echo sqrt\($p1\) | bc`
echo "The value of area is $area"
