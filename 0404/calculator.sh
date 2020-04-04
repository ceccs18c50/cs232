#!/usr/bin/bash
echo "MENU DRIVEN CALCULATOR"
echo "1.add"
echo "2.subtract"
echo "3.multiply"
echo "4.divide"
echo "5.modulus"
while true
do
echo "enter choice"
read ch
if [ $ch == 1 ]
then
echo "enter numbers"
read x
read y
r=`expr $x + $y`
echo "SUM =  $r"
sleep 0.5
elif [ $ch == 2 ]
then
echo "enter numbers"
read x
read y
r=`expr $x -  $y`
echo "DIFFERENCE =  $r"
sleep 0.5
elif [ $ch == 3 ]
then
echo "enter numbers"
read x
read y
r=`expr $x \* $y`
echo "PRODUCT =  $r"
sleep 0.5
elif [ $ch == 4 ]
then
echo "enter numbers"
read x
read y
r=`expr $x / $y`
echo "QUOTIENT  =  $r"
sleep 0.5
elif [ $ch == 5 ]
then
echo "enter numbers"
read x
read y
r=`expr $x %  $y`
echo "REMAINDER  =  $r"

else
echo "invalid choice"
exit 0
fi 
done
