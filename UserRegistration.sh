#!/bin/bash -x

#input first name and last name as fname and lname
read -p "enter first name and last name " fname lname
#input email address
read -p "enter email address " email
#inpur mobileNo
read -p "enter mobile number formate: country code followed by space followed by 10digit mob. number " mobileNo 
#input password
read -p "enter password " password

#patterns for name, email and mobileNo matching
namePattern="^[[:upper:]]{1}[a-z]{2,}$";
emailPattern="/^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/"
mobPattern="^([+]{1}[9]{1}[1]{1})\s[6-9]{1}[0-9]{9}$"
#pattern for password
password_validate="^[A-za-z]{8,}$"

if [[ $fname =~ $namePattern ]] && [[ $lname =~ $namePattern ]]
then
	if [[ $email=~$emailPattern ]] && [[ $mobileNo=~$mobPattern ]] && [[ $password=~$password_validate ]]
	then
		echo "name ,email,mobile number and password validation successfull";
	else
		echo "email or mobile number or password validation not successfull";
	fi
else
	echo "name not matched";
fi
