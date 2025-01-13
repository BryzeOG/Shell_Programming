clear

a=0

# while condition syntax is same as if condition.
while [ $a -lt 10 ]
do
	echo "Value:" $a
	((a++))
done