#!/bin/bash
year=$1
month=$2
day=$3
if [[ $month -ge 1 && $month -le 12 ]]
then
	echo "Month: OK"
elif [ $month -eq 100 ]
then
	echo "Kuch viii!!"
else
	echo "Month : Not Ok"
fi
name=$4
if [ $name = "Arindam" ]
then
	echo "Matched!!"
else
	echo "Not Matched!!"
fi
