#!/bin/bash -x

read -p "enter first name and last name " first_name last_name
read -p "enter email address " email
read -p "enter mobile number with or without country code followed by space followed by 10digit mob. number " mobileNo 

#patterns for name, email and mobileNo matching
namePattern="^[[:upper:]]{1}[a-z]{2,}$";
emailPattern="^([A-Za-z]+[A-Za-z0-9]*((\.|\-|\_)?[A-Za-z]+[A-Za-z0-9]*){0,})@(([A-Za-z]+[A-Za-z0-9]*)+((\.|\-|\_)?([A-Za-z]+[A-Za-z0-9]*)+){0,})+\.([A-Za-z]{2,})+$"
mobPattern="^([+]{1}[9]{1}[1]{1})[[:space:]]|[6-9]{1}[0-9]{9}$"


if [[ $first_name =~ $namePattern ]] && [[ $last_name =~ $namePattern ]]
then
        echo "first name and last name matched";
else
        echo "name not matched";
fi

if [[ $email =~ $emailPattern ]]
then
        echo "email matched"
else
        echo "email not matched"
fi

if [[ $mobileNo =~ $mobPattern ]]
then
        echo "mobNo matched"
else
        echo "mobNo not mathed"
fi
