#!/bin/bash -x

read -p "enter first name " first_name

#fnamePattern="^[A-Z]{1}[a-z]{2,}$";
pat="^[[:upper:]]{1}[a-z]{2,}$"
if [[ $first_name =~ $pat ]]
then
	echo "matched";
else
	echo "not matched";
fi
