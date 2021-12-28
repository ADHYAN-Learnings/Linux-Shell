#!/bin/bash

read first_value
read second_value

val1=`expr $first_value + $second_value`
val2=`expr $((first_value - second_value))` 
val3=`expr $((first_value * second_value))` 
val4=`expr $((first_value / second_value))` 
echo "$val1"
echo "$val2"
echo "$val3"
echo "$val4"
