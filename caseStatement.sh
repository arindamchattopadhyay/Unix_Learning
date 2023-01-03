#!/bin/bash
echo -e "Enter the value: \c"
read value
case $value in
"car" )
echo "Rent for $value: "100 ;;
"bike" )
echo "Rent for $value: "50 ;;
* )
echo "$value unknown!! " ;;
esac
#For regex
echo -e "Enter a character(S) \c"
read character
case $character in
[A-Z] )
echo "$character is in A to Z" ;;
[a-z] )
echo "$character is in a to z" ;;
[0-9] )
echo "$character is in 0 to 9" ;;
? ) #any special character
echo "$character is a special character" ;;
* ) 
echo "$character is not in the above" ;;
esac
