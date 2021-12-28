#!/bin/bash

for ((i=1;i<=100;i++))
do
if [ `expr $i % 2` -ne 0 ] 
then
echo $i
fi
done
