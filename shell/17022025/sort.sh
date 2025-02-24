# Sorting using bubble sort
clear

read -p "Enter the number of elements in the array: " n

i=0
while [ $i -lt $n ]
do
	read arr[$i]
	((i++))
done


j=0

while [ $j -lt $n ]
do
	k=0
	p=`expr $n - 1`
	while [ $k -lt $p ]
	do
		l=`expr $k + 1`
		# echo "k = " $k "l = " $l
		if [ ${arr[$k]} -gt ${arr[$l]} ]
		then
			temp=${arr[$k]}
			arr[$k]=${arr[$l]}
			arr[$l]=$temp
		fi
		((k++))
		done
	((j++))
	done

echo "The sorted array is: " ${arr[*]}