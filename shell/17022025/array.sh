# Array and basic operations on it

clear
arr=(1 4 6 8 19)
echo "The third element is: " ${arr[2]}
echo "Here is all the elements in the array: " ${arr[*]}
echo "The number of elements is: " ${#arr[*]}

# User input array: 

i=0
while [ $i -lt 5 ]
do
	read new_arr[$i]
	((i++))
done
echo "Here is all the elements in the array: " ${new_arr[*]}
echo "The number of elements is: " ${#new_arr[*]}

if [ ${new_arr[3]} -gt ${new_arr[1]} ]
then
	echo "The fourth element is greater than the second element"
else
	echo "False"
fi