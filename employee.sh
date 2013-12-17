#Created By Ryan Nour and Arun Rai on 12/11/2013
#!/bin/sh
while :
do

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

((y++))
#Create a main directory 
if [ -d "$main" ]; then
	cd "$main"
else
	mkdir -p "$main"
	cd "$main"
fi

#Create a sub-directory named with the type of the employee
#Create a file insided the sub-directory named with the employee name
#the file will cotain the information of the emnployees

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

echo "Doy you want to enter information of more employees ?"
echo "Enter y for yes or n for No : "
read more

if [ "$more" == "n" ]; then
echo "********* You have entered information of $y employees. ****************"
echo " "
break
else
echo "*************  The number of employees you have entered : $y ************"
echo "*************************************************************************"
echo " " 
fi

#end while
done 
