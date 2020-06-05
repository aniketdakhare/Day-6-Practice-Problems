#!/bin/bash

read -p "Enter the number  " num
temp=1
for ((i=1; i<=$num; i++))
do
	temp=$(($temp*$i))
done
echo Factorial of $num is $temp
