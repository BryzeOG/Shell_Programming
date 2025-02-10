fnFACT()
{
	prod=1
	i=1
	while [ $i -le $1 ]
	do
	prod=`expr $i \* $prod`
	((i++))
	done
   #return $val
	echo $prod
}

read -p "Enter the number " m
fnFACT $m
#echo "The result is: " $?

# Interesting fact: The script calculates the factorial, 
# but if we use return statement, it cant return values more than 255. 
# But if we use echo, it displays accurate values