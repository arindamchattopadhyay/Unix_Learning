#!/bin/bash
read -p "Enter year: " year
read -p "Enter month: " month
read -p "Enter dayOfTheMonth: " dayOfTheMonth
echo "The date in yyyy-mm-dd is: $year-$month-$dayOfTheMonth"
<<comm
#Reading password or silent input
read -sp "Enter password: " mockPassword
echo "Mock password: " $mockPassword
comm
#Now reading arrays
echo "Enter names: "
read -a names
#REPLY is for single input only. For arrays, explicitly the variable should be defined
echo "Name1: ${names[0]} Name2: ${names[1]}" 
