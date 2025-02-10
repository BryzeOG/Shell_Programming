fnHW()
{
	echo "Hello User!"
}

fnADD()
{
	var=`expr $1 + $2`
	echo "Result of Addition: $var"
}

fnSUB()
{
	var=`expr $1 - $2`
	echo "Result of Subtraction: $var"
}

fnHW
read -p "Enter two numbers: " m n
fnADD $m $n
