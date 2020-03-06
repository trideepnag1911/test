#!/bin/bash
Author=(`cat Books.xml | grep author | sed 's/<author>//g' | sed 's/<\/author>//g' | sed 's/,//g'| sed 's/^ *//g'| sed 's/ /_/g'`)
Book_ID=(`cat Books.xml | grep "book id" | sed 's/<book id="//g'| sed 's/">//g'`)
Line_Count=`cat Books.xml | grep author | wc -l`
Count=0
 for i in $(seq 1 1 $Line_Count)
 do
	 echo ${Book_ID[$Count]} " was written by " ${Author[$Count]}
	 Count=`expr $Count + 1`
 done
