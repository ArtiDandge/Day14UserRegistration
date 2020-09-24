#!/bin/bash -x

read -p "enter first name " fname

#fnamePattern="^[A-Z]{1}[a-z]{2,}$";
pat="^[[:upper:]]{1}[a-z]{2,}$"
if [[ $fname =~ $pat ]]
then
	echo "matched";
else
	echo "not matched";
fi
