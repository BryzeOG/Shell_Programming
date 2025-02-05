# This codes calculates the average of 3 subjects and returns a rank

# clear the terminal before program is executed
clear

# read number

# calculate average
sum=`expr $1 + $2 + $3`
echo "Marks in 1st Subject: " $1
echo "Marks in 2nd Subject: " $2
echo "Marks in 3rd Subject: " $3
avg=`expr $sum / 3`

echo $avg

# ge: >=, but only works for integer arguments
# if<space>[<space>$var -<condition> <val><space>]

if [ $avg -ge 90 ]
then 
	echo "Grade A"

elif [ $avg -ge 80 ]
then
	echo "Grade B"

elif [ $avg -ge 70 ]
	then
	echo "Grade C"

elif [ $avg -ge 60 ]
	then
	echo "Grade D"

elif [ $avg -ge 50 ]
	then 
	echo "Grade E"

else
	echo "Failed"
fi

#fi denotes the end of the if block