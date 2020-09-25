#!/bin/bash -x

#input first name and last name as fname and lname
read -p "enter first name and last name" fname lname

#input email address
read -p "enter email address " email

#inpur mobileNo
read -p "enter mobile number formate: country code followed by space followed by 10digit mob. number" mobileNo 

namePattern="^[[:upper:]]{1}[a-z]{2,}$";
emailPattern="^[a-z0-9!#\$%&'*+/=?^_\`{|}~-]+(\.[a-z0-9!#$%&'*+/=?^_\`{|}~-]+)*@([a-z0-9]([a-z0-9-]*[a-z0-9])?\.)+[a-z0-9]([a-z0-9-]*[a-z0-9])?\$";
mobilePattern="^([9]{1}[1]{1})/s[6-9]{1}[0-9]{9}$";

if [[ $fname =~ $namePattern ]] && [[ $lname =~ $namePattern ]]
then
	if [[ $email =~ $emailPattern ]] && [[ $mobileNo =~ $mobilePattern ]]
	then
		echo "matched";
	fi

else
	echo "not matched";
fi
