#!/bin/bash
#

c=0
i="y"

while [[ $i = "y" || $i = "Y" ]]
do
#choose a option to perform and action
echo "choose any option"
echo -e " 1) Addition \n 2) Substraction \n 3) Multiplication \n 4) Divission"
read o

# Enter two numbers on which you want to perform a action

echo "Enter first number: "
read a
echo "Enter second number: "
read b

#case statement

case $o in
        1) c=$(echo "$a + $b" | bc -l )
          echo "Addition: "  $c
          ;;
        2) c=$(echo "$a - $b" | bc -l )
          echo "Subtraction: "  $c
          ;;
        3) c=$(echo "$a * $b" | bc -l )
          echo "Multiplication: "  $c
          ;;
        4) c=$(echo "$a / $b" | bc -l )
          echo "Division: "  $c
          ;;

        *)
        echo "Please choose valid option" 
        ;;

esac
echo "Do you want to continue" 
echo "press (y || Y)to continue or press any other key to abort"
read i
if [[ $i != y && $i != Y ]]
then
        exit
fi
done