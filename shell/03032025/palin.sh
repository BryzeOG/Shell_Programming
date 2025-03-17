clear

read -p "Enter the word: " text
loop=`echo $text | wc -c`
flag=0

i=1
n=`expr $loop / 2`
while [ $i -le $n ]
do
	j=`expr $loop - $i`
	var=`echo $text | cut -c $i`
	var2=`echo $text | cut -c $j`
	if [ "$var" != "$var2" ]
	then
		flag=1
		echo "Not Palindrome"
		break
	fi
	((i++))
done
if [ $flag -eq 0 ]
then 
	echo "Palindrome"
fi
