clear

read -p "Enter: " temp
temp2=`echo $temp | rev` #rev reverses string
echo "Reversed: " $temp2
if [ $temp = $temp2 ] #checks if the two strings are equal
then 
	echo "Palindrome"
else
	echo "Not Palindrome"
fi