#!/bin/bash
echo "Input the value of n"
read n_1136
flag=0
echo "Enter your option: "
echo "1 -> Palindrome Number"
echo "2 -> Perfect Number"
echo "3 -> Armstrong"
echo "4 -> Even Perfect Square"
read x_1136
case $x_1136 in
1)
n_1136=$x_1136
r_1136=0
while [ $n_1136 -gt 0 ]
do
d_1136=`expr $n_1136 % 10`
r_1136=`expr $r_1136 \* 10`
r_1136=`expr $r_1136 + $d_1136`
n_1136=`expr $n \/ 10`
done
if [ $r_1136 -eq $x_1136 ]
then
echo "Palindrome number"
else 
echo "Not a palindrome number"
fi
;;
2)
i_1136=1 
ans_1136=0
while [ $i_1136 -le `expr $n_1136 \/ 2` ] 
do
if [ `expr $n_1136 % $i_1136` -eq 0 ] 
then
ans_1136=`expr $ans_1136 + $i_1136`
fi
i_1136=`expr $i_1136 + 1`
done
if [ $n_1136 -eq $ans_1136 ] 
then
echo $n_1136 is perfect 
else
echo $n_1136 is NOT perfect 
fi
;;
3)
n_1136=$x_1136
s_1136=0
while [ $n_1136 -gt 0 ]
do
d_1136=`expr $n_1136 % 10`
c_1136=`expr \( $d_1136 \* $d_1136 \* $d_1136 \) `
s_1136=`expr $s_1136 + $c`
n_1136=`expr $n_1136 \/ 10`
done
echo $s_1136
if [ $s_1136 -eq $x_1136 ]
then
echo Armstrong number
else 
echo Not an armstrong number
fi
;;
4)
for (( i=0; i<=$n; i++ ))
do
val_1136=`expr $i \* $i`
if [ $n_1136 -eq $val_1136 ] && [ `expr $val_1136 % 2` -eq 0 ]
then
echo "It is an even perfect square"
flag=1
break
fi
done
if [ $flag -eq 0 ]
then
echo "It is not an even perfect square"
fi
;;
*)
echo Invalid choice
;;
esac