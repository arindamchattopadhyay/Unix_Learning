echo "Get only the 2nd char from the file"
cut -c2 names
echo "Get all the characters from the 2nd character onwards"
cut -c2- names
echo "Get all the characters from the 1st to 4th character"
cut -c1-4 names
echo "Get all the fields from the 2nd field onwards in a csv file"
cut -d "," -f 2- country.txt
echo "Get all the fields from the 2nd to 4th field onwards in a csv file"
cut -d "," -f 2-4 country.txt
echo "Change the delimeter of output"
cut -d "," -f 1- country.txt --output-delimiter="|"
<<comm
cat names
________________________
Arindam
Sachin
Messi
Nadal
Zidane
cat country.txt
__________________________
id,name,population,avg_age,capital
1,India,142,36,Delhi
2,China,141,43,Bejing
3,Japan,29,44,Tokyo
comm
