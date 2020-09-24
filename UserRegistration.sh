#!/bin/bash -x

read -p "enter first name " fname lname
read -p "enter email address " email
namePattern="^[[:upper:]]{1}[a-z]{2,}$";
emailPattern="^[a-z0-9!#\$%&'*+/=?^_\`{|}~-]+(\.[a-z0-9!#$%&'*+/=?^_\`{|}~-]+)*@([a-z0-9]([a-z0-9-]*[a-z0-9])?\.)+[a-z0-9]([a-z0-9-]*[a-z0-9])?\$";


if [[ $fname =~ $namePattern ]] && [[ $lname =~ $namePattern ]]
then
	if [[ $email =~ $emailPattern ]]
	then
		echo "matched";
	fi

else
	echo "not matched";
fi
