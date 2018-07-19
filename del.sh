#!/bin/sh

if [ -e book.txt ]
then
	BOOK="book.txt"

	./list.sh

	echo -n "Which line should I delete: "
	read number

#	mv $BOOK boo.txt

	nl --number-separator=":" book.txt | grep -v $number: | awk -F: '{print $2}' |  tee $BOOK
	echo "FILE AFTER DELETE"
	echo "LINE NUMBER :  NAME  :  PHONE NUMBER :    ADDRESS  :"
	nl --number-separator=":           " $BOOK | cat
else
	echo	
	echo "Address book is not created. First create it!!!"
	echo
fi
