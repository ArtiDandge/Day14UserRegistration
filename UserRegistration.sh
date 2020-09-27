#!/bin/bash -x

read -p "enter first name and last name" first_name last_name
read -p "enter email address " email
namePattern="^[[:upper:]]{1}[[:lower:]]{2,}$";
emailPattern="^([A-Za-z]+[A-Za-z0-9]*((\.|\-|\_)?[A-Za-z]+[A-Za-z0-9]*){0,})@(([A-Za-z]+[A-Za-z0-9]*)+((\.|\-|\_)?([A-Za-z]+[A-Za-z0-9]*)+){0,})+\.([A-Za-z]{2,})+$";


if [[ $first_name =~ $namePattern ]] && [[ $last_name =~ $namePattern ]]
then
	echo "name matched"

else
	echo "name not matched ";
fi


if [[ $email =~ $emailPattern ]]
then
        echo "email matched"
else
        echo "email not matched"
fi
