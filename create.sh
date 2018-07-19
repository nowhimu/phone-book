#!/bin/sh



echo
if [ -e book.txt ]
then
	echo "DIRECTORY IS ALREADY IS CREATED"
else
	touch book.txt
	echo "DIREACTORY IS SUCCSESFULY CREATED"
	fi
exit 0
