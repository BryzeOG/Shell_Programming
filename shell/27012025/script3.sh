#Script that will take a number as a input and sum their digits
clear

sum=0
echo "The number is: " $1
n=$1
while [ $n -gt 0 ]
do	
	temp=`expr $n % 10`
	sum=`expr $sum + $temp`
	n=`expr $n / 10`
done

echo "The sum is: " $sum