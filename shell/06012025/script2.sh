# This code checks if the number is odd or even

# Clears the terminal
clear

# Takes a number as input
read -p "Enter the number" n
res=`expr $n % 2`

if [ $res -eq 0 ]
	then
	echo "Even"

else 
	echo "Odd"

fi