# Min and Max of an Array

clear

read -p "Enter the number of elements in the array: " n

i=0
while [ $i -lt $n ]
do
	read arr[$i]
	((i++))
done

min=${arr[0]}
max=${arr[0]}
j=0
while [ $j -lt $n ]
do
	if [ ${arr[$j]} -gt $max ]
	then 
		max=${arr[$j]}
	fi

	if [ ${arr[$j]} -lt $min ]
	then 
		min=${arr[$j]}
	fi

	((j++))
done

echo "Max: " $max "Min: " $min