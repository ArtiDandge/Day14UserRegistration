#!/bin/bash -x

read -p "enter first name and last name " first_name last_name
read -p "enter email address " email
read -p "enter mobile number formate: country code followed by space followed by 10 digit mobile number " mobileNo
read -p "enter password " password

#patterns for name, email, mobileNo and password validation
namePattern="^[[:upper:]]{1}[a-z]{2,}$";
emailPattern="/^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/"
mobPattern="^([+]{1}[9]{1}[1]{1})\s[6-9]{1}[0-9]{9}$"
password_validate="^(?=.*[A-Z])(?=.*\d)[A-Za-z0-9]{8,}$/"

if [[ $first_name =~ $namePattern ]] && [[ $last_name =~ $namePattern ]]
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

