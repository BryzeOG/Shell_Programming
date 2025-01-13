# Script that shows the even and odd numbers within a user defined range
clear

read -p "Enter the lower bound: " lb
read -p "Enter the uppber bound: " up

a=$lb
while [ $a -le $up ]
do
	val=`expr $a % 2`
	if [ $val -eq 0 ]
	then echo "Even: " $a
	fi
	((a++))
done

b=$lb
while [ $b -le $up ]
do
	val=`expr $b % 2`
	if [ $val -eq 1 ]
	then echo "Odd: " $b
	fi
	((b++))
done	
