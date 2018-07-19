#!/bin/sh

clear

#BOOK="book.txt"

exit=0

while [ $exit -ne 1 ]
do
	echo "SELECT YOUR OPERATION:-"
	echo "1.CREATE"
	echo "2.ADD"
	echo "3.LIST"
	echo "4.FIND"
	echo "5.DELETE"
	echo "6.UPDATE"
	echo "7.EXIT"
	echo "ENTER YOUR TEXT FOR OPERATION:-"
	echo
	read answer					#use for standerd input
	
	if [ "$answer" = "create" -o $answer = 1 ]
	then
		./create.sh

	elif [ "$answer" = "add" -o $answer = 2 ]
	then
		./add.sh

	elif [ "$answer" = "list" -o $answer = 3 ]
	then
		./list.sh

	elif [ "$answer" = "find" -o $answer = 4 ]
	then
		./find.sh


	elif [ "$answer" = "delete" -o $answer = 5 ]
	then
		./del.sh


	elif [ "$answer" = "update" -o $answer = 6 ]
	then
		./update.sh


	elif [ "$answer" = "exit" -o $answer = 7]
	then
		exit=1

	else
		echo "COMMAND NOT UNDERSTAND"
	fi
done

exit 0
