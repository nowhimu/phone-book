#!/bin/sh



echo

BOOK="book.txt"

if [ -e "book.txt" ]
then
	echo "LINE NUMBER :  NAME  :  PHONE NUMBER :    ADDRESS  :"
	nl --number-separator=":           " $BOOK | cat
	#cat book.txt
 echo  

else
	touch book.txt
	echo "DIREACTORY IS NOT FOUND"
	fi
exit 0
