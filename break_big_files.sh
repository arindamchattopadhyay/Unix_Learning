#!/bin/bash
num_of_lines=$(wc -l big_file.txt|awk '{print $1}')
echo number of lines in the big file = $num_of_lines
inp=$1
parts=$(( num_of_lines / inp ))
rem=$(( num_of_lines % inp ))
i=1
while [ $i -le $parts ]
do 
	(head -$(( i * parts )) big_file.txt|tail -$parts) > file_$i
	i=$((i + 1 ))
done
tail -$rem big_file.txt > file_$i
