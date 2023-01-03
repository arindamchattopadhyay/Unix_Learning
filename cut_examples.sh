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
