#!/bin/bash
#while loops
n=1
while [ $n -le 3 ]
do
	echo 'Arindam Is Improving..!!'
	n=$(( n+1 ))
	#sleep 1
	#gnome-terminal & #To open new terminals
done
#Reading content of file
file= cat abc.txt
IFS=   #it is a good practice to store the original IFS in a variable.here, it's blank
#otherwise, each word gets displayed on a line each
for line in $file
do
echo $line
done
while IFS=  read -r line # -r to prevent interpreting any backslash
do
echo $line
done < abc.txt
<<comm
abc.txt
For Testing
I am making this
Let's enjoy and partyyyyy!!!!!!!!!!!!  \m
comm
