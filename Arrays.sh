#!/bin/bash
os=('windows' 'mac' 'ubuntu' 'Fedora') #if we do not use space in between , the entire string inside the braces will treated as a single element
#To delete a particular index, we can use unset
unset os[1]
#Printing all array elements
echo "${os[@]}"
#We can keep a value at any index position. need not be the contiguous 
os[6]='Kali'
#printing a particular value of an index
echo "${os[1]}"
#To update a particular value at an index
os[0]='Debian'
#if we want to print indices, the indices having nulls will be ignored
echo "${!os[@]}"
#if we want to print number of elements
echo "${#os[@]}"
# echo "${os[@]}" printing all elements
string="Abcdfeffg"
echo ${string[@]} #the entire string is taken as a single element in an array
echo ${string[1]} #therefore, this returns blank