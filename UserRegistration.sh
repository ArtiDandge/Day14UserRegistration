#!/bin/bash -x

read -p "enter first name " fname lname

namePattern="^[[:upper:]]{1}[a-z]{2,}$"

if [[ $fname =~ $namePattern ]] && [[ $lname =~ $namePattern ]]
then
	echo "matched";
else
	echo "not matched";
fi
