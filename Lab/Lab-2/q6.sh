#!/bin/sh
echo "Enter your marks: "

read n1 n2 n3 n4 n5 

sum=`expr $n1 + $n2 + $n3 + $n4 + $n5`
avg=`expr $sum / 5`

echo "Your average is: $avg"

if [ $avg -gt 90 ]
then
echo "O grade"
elif [ $avg -gt 80 ] && [ $avg -lt 90 ]
then
echo "E grade"
elif [ $avg -gt 70 ] && [ $avg -lt 80 ]
then
echo "A grade"
elif [ $avg -gt 60 ] && [ $avg -lt 70 ]
then
echo "B grade"
elif [ $avg -gt 50 ] && [ $avg -lt 60 ]
then
echo "C grade"
elif [ $avg -gt 40 ] && [ $avg -lt 50 ]
then
echo "D grade"
else
echo "F grade"
fi
