#!/bin/bash -x

read -p "enter first name " first_name last_name

namePattern="^[[:upper:]]{1}[a-z]{2,}$"

if [[ $first_name =~ $namePattern ]] && [[ $last_name =~ $namePattern ]]
then
	echo "name matched";
else
	echo "name not matched";
fi
