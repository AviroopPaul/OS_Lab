#!/bin/bash
echo Enter a number
read ps_1136
b=10
if [ `expr $ps_1136 % 2` -eq 0 ]
then
	if [ $ps_1136 -gt 5 ] 
	then
	for (( i=1;i<=10;i++ ))
	do
		a=1
		for (( j=1;j<=$i;j++ ))
			do
			echo -n "$a"
			a=`expr $a + 1`
			done
		echo 
	done
	else
	for (( i=1;i<=10;i++ ))
		do
		a=1
		for (( j=10;j>=$i;j-- ))
		do
			echo -n "$a"
			a=`expr $a + 1`
		done
		echo 
	done
	fi
else
if [ $ps_1136 -gt 5 ]
then
for (( i=1;i<=10;i++ ))
do
	for (( k=10;k>$i;k-- ))
	do
		echo -n " "
	done
	for (( j=1;j<=$i;j++ ))
	do
		echo -n "$i "
	done
	echo
done
else
for (( i=1;i<=10;i++ ))
do
	for (( k=1;k<$i;k++ ))
	do
	echo -n " "
	done
	for (( j=10;j>=$i;j-- ))
	do
	echo -n "$b "
	done
	echo
	b=`expr $b - 1`
done
fi
fi