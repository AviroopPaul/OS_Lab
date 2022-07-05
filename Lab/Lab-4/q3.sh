#!/bin/sh

echo "Enter a character: "
read c
 
if [[ "$c" =~ [a-z] ]] || [[ "$c" =~ [A-Z] ]]
then
echo "Alphabet"
elif [ $c -ge 0 ] && [ $c -le 9 ]
then
echo "Number"
else
echo "Special character"
fi
