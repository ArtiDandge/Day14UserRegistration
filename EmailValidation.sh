#!/bin/bash -x

#array of valid emails
valid_emails=(
	"abc@yahoo.com"
	"abc-100@yahoo.com"
	"abc.100@yahoo.com"
	"abc111@abc.com"
	"abc-100@abc.net"
	"abc.100@abc.com.au"
	"abc@1.com"
	"abc@gmail.com.com"
	"abc+100@gmail.com"
)

#array of invalid emails
invalid_emails=(
	"abc"
	"abc@.com.my"
	"abc123@gmail.a"
	"abc123@.com"
	"abc123@.com.com"
	".abc@abc.com"
	"abc()*@gmail.com"
	"abc@%*.com"
	"abc..2002@gmail.com"
	"abc.@gmail.com"
	"abc@abc@gmail.com"
	"abc@gmail.com.1a"
	"abc@gmail.com.aa.au"
)

emailPattern="^[[:lower:]]{1,}[._+\-]{0,1}[[:lower:]0-9]{1,}\@[[:lower:]0-9]{1,}[\.]{1}[[:lower:]]{2,}([.]{0,}[[:lower:]]{2,})?$"

#fuction to validate emails
function validate_email {

if [[ $1 =~ ${emailPattern} ]]
then
    printf "* %-48s \e[1;32m[pass]\e[m\n" "${1}"
else
    printf "* %-48s \e[1;31m[fail]\e[m\n" "${1}"
fi

}

#online check of validity of mails
cat <<-EOF
a simple email validator in shell
online validator: http://emailregex.com/
RFC: http://emailregex.com/email-validation-summary/
EOF

#display that validated emails
echo
echo "expected result: valid_emails"
echo

#passing valid emails array as an input to function
for input in "${valid_emails[@]}"; do
  validate_email "${input}"
done

#display emails
echo
echo "expected result: invalid_emails"
echo

#passing invalid emails array as an input to function 
for input in "${invalid_emails[@]}"; do
  validate_email "${input}"
done
