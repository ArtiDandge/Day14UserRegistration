#!/bin/bash -x

read -p "enter first name and last name" first_name last_name
read -p "enter email address " email
namePattern="^[[:upper:]]{1}[a-z]{2,}$";
emailPattern="^[a-z0-9!#\$%&'*+/=?^_\`{|}~-]+(\.[a-z0-9!#$%&'*+/=?^_\`{|}~-]+)*@([a-z0-9]([a-z0-9-]*[a-z0-9])?\.)+[a-z0-9]([a-z0-9-]*[a-z0-9])?\$";


if [[ $first_name =~ $namePattern ]] && [[ $last_name =~ $namePattern ]]
then
	if [[ $email =~ $emailPattern ]]
	then
		echo "name and email validated";
	else
		echo "email of validated"
	fi

else
	echo "name not matched validation";
fi
