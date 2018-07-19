#!/bin/sh



BOOK=book.txt
if [ -e book.txt ]
then
	echo -n "What person or number are you searching: "
        read key
	echo "LINE NUMBER :  NAME  :  PHONE NUMBER :    ADDRESS  :"
	#nl --number-separator=":           " $BOOK
        grep -i $key $BOOK

 echo  

else
	#touch book.txt
	echo "DIREACTORY IS NOT FOUND"
	fi
exit 0
