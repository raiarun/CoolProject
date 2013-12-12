#Created By Ryan Nour and Arun Rai on 12/11/2013
#!/bin/sh

echo "Name: " 
read name
echo "" #used to indicate a new line so that the data is properly formatted
echo "Position: "
read position
echo ""
echo "Salary: "
read salary
echo ""
echo "Email:"
read email
echo ""
echo "Phone Number:"
read phone

main=EmployeeInfo
pos=$position
n=$name
sal=$salary
em=$email
ph=$phone

if [ -d "$main" ]; then
	cd "$main"
else
	mkdir -p "$main"
	cd "$main"
fi

if [ -d "$pos" ]; then
	cd "$pos"
  	echo "Name: $n" > $n
	echo "Salary: $sal" >> $n
	echo "Email: $em" >> $n
	echo "Phone: $ph" >> $n
else
	mkdir -p "$pos"
	cd "$pos"
	echo "Name: $n" > $n
	echo "Salary: $sal" >> $n
	echo "Email: $em" >> $n
	echo "Phone: $ph" >> $n
fi

exit 0
