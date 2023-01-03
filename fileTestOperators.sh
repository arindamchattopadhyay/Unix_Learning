#!/bin/bash
echo -e "Enter the filename: \c"  #\c used to stop the cursor at the end of line and not move to the next line. -e is required to interpret the backslash
read filename
if [ -e $filename ] #to check if file exists or not
then
	echo $filename exists!
else
	echo $filename does not exist!!
fi
if [ -f "$filename" ] #to check if a regular file(not a directory or character files) with filename exists or not
then
	echo Regular file: $filename exists!
else
	echo Regular file: $filename does not exist!!
fi
if [ -c "$filename" ] #to check if the  character file (to interact with OS) with filename exists or not, similarly to check for directories we use "-d"
then
        echo Character file: $filename exists!
else
	        echo Character file: $filename does not exist!!
fi
