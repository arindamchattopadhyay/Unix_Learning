#!/bin/bash
echo $1 $2 $3
echo $0 #This will be the script name
args=("$@")
echo ${args[0]} ${args[1]} ${args[2]}
echo ${@:$#} #Print the last param
echo $# #Print the number of parameters passed
