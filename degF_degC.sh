#!/bin/bash

function degF_degC()
{
        input=$1
        c=1.8
        read -p "Enter the value between ( 0°C / 32°F ) & ( 100°C / 212°F )  " value
        deg=$(($value >= 0 && $value <= 100))
        far=$(($value >= 32 && $value<= 212 ))
        case $input in
                1)
                        case $deg in
                                1)
                                        v=$(echo " scale=2; $value*$c" | bc )
                                        degF=$(echo "scale=2; $v+32" | bc  )
                                        result=$degF
                                        ;;
                                *)
                                        echo Invalid Input
                                        ;;
                        esac
                        ;;
                2)
                        case $far in
                                1)
                                        v=$(($value-32))
                                        degC=$(echo "scale=2; $v/$c" | bc  )
                                        result=$degC
                                        ;;
                                *)
                                        echo Invalid Input
                                        ;;
                        esac
                        ;;
                *)
                        echo Invalid Input
                        ;;
        esac
        echo $result
}
 echo -e "Select the valid input \n1: To convert Degree to  Fahrenheit \n2: To convert Fahrenheit to Degree "
read input
degF_degC $input
