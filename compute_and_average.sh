#!/bin/sh

read length
x=0
for (( i=1;i<=$length;i++ ))
do
  read number
  x=`expr $x + $number`
done
echo $x
printf "%.3f" $(echo "scale=4;$x/$length" | bc) 
