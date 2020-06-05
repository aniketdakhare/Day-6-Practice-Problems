#!/bin/bash

read -p "Enter the starting range  " start
read -p "Enter the ending Range:  " end
for (( i=$start; i<=$end; i++))
do
        num=$i
        count=0
        for ((j=1; j<=$num/2 ; j++))
        do
                if [ $(($num%$j)) -eq 0 ]
                then
                        ((count++))
                fi
        done
        if [ $count -eq 1 ]
        then
                echo $num
        fi
done
