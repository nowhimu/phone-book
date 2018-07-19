#!/bin/sh

if [ -e book.txt ]
then
	BOOK="book.txt"

	number=0
	echo -n "What person or number are you seeking: "
	read fn

	echo "Name ; Phone number"
	grep -i $fn $BOOK
	STATUS=`echo $?`
	if [ $STATUS -eq 1 ]
	then
		echo
		echo "No record found!!!"
		echo
	else
		echo
		echo
		echo "Record found. Please check the line number of the record"
		echo
		./list.sh
		echo
		echo "Enter the line number that youd like to update"
		read lineNumber
		echo
		for line in `grep -n $fn $BOOK`
		do

			number=`expr $number + 1`
			echo $number
			if [ $number -eq $lineNumber ]
			then
				lineChange="{lineNumber}"			
				echo -n "Name of person: " 
				read name

				echo -n "Phone number: "
				read phone

				mv $BOOK boo.txt

				nl --number-separator=":" boo.txt | grep -v $number: | awk -F: '{print $2}' |  tee book.txt

				echo "$name ; $phone" >>$BOOK

			fi
		done
	fi

else
	echo	
	echo "Address book is not created. First create it!!!"
	echo
fi
