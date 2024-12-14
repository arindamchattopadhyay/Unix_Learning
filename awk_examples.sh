#!/bin/bash
echo print a column
echo "-------------------"
awk '{print $1}' data
echo print multiple columns
awk '{print $1,$3}' data
echo print last column
awk '{print $NF}' data
echo print only the line numbers
awk '{print NR}' data
echo print line numbers along with the data
awk '{print NR "| " $0}' data
echo Make pipe delimited all the data
awk '{print $1 "| " $2}' data
echo "Get a column from csv"
awk -F, '{print $2 "| " $3}' country.txt
echo "Countries whose population is greater than 40 cr"
awk -F, '{if($3>40) print $2}' country.txt
echo "Find the lines having length greater than 20"
awk '{if(length($0)>20) print $0}' country.txt
echo "Find the lines having the string India in it"
awk '/India/ {print}' country.txt
echo "Find the 2nd and 4th line in a file"
awk 'NR==2,NR==4 {print}' country.txt
echo "Find the lines that are empty"
awk 'NF==0 {print NR $0}' country.txt
echo "Find the number of lines in a file"
awk 'END {print NR}' country.txt
echo "Use of for loop"
awk 'BEGIN {for(i=0;i<10;i++) print i}'
echo "Use of while loop"
awk 'BEGIN {while(i<10){i++; print i;}}'
#Remove last column in a file
awk -v OFS="|" -F '|' '{NF--}1' filename
<<comm
data file
--------------------
ID Name State Country
1 Arindam WB India
2 Javier MH India
3 Mike KA India
4 Lion OD India
--------------------
country.txt file
--------------------
id,name,population,avg_age,capital
1,India,142,36,Delhi
2,China,141,43,Bejing
3,Japan,29,44,Tokyo

--------------------
comm
