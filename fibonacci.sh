#!/bin/bash

#take value from user for number of terms

echo -n "Enter number of tenms: "
read n

#initialise the variable

a=0
b=1

#Print first two numbers in series

echo -n "$a $b "

#for fibonacci series

for ((i=2; i<n; i++))
do
        c=$((a + b))
        echo -n "$c "
        a=$b
        b=$c

done

echo

