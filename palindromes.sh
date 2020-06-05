#!/bin/bash

function check_palindrom()
{
	num=$1
	r=0
	temp=$num
	sum=0
	while [ $temp -gt 0 ]
	do
		r=$(($temp%10))
		sum=$(($(($sum*10))+r))
		temp=$(($temp/10))
	done
if [ $num -eq $sum ]
then
	echo $num is Palindrom
else
	echo $num is not Palindrom
fi
}
read -p "enter the Number  "  value
check_palindrom $value
