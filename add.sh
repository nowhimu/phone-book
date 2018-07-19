#!/bin/sh



echo
if [ -e book.txt ]
then
	echo "Enter the name"
	read name
	echo "Enter the phone number"
	read pn
	echo "enter the address"
	read add
	echo "$name"         "$pn"          "$add" >> book.txt
 echo  

else
	touch book.txt
	echo "DIREACTORY IS NOT FOUND"
	fi
exit 0
