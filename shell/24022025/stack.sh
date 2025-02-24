# A program that implements stack

# $1 is the top variable, $2 is the stack and $3 is the user input

clear

MAX=9
arr=()
top=-1
state=true

POP()
{
	echo "Popped element:"
	if [ $top -eq -1 ]
		then echo "Underflow"
	else
		echo ${arr[$top]}
		arr[$top]=$s # No variable called s is initialised, to array[top] is value is overwritten by empty value
		((top--))
	fi
}

PUSH()
{
	if [ $top -eq $MAX ]
		then echo "Overflow"
	else
		((top++))
		arr[$top]=$1
	fi
}

SHOW()
{
	echo "Current stack: "
	i=$top
	while [ $i -ge 0 ]
	do
		echo ${arr[$i]}
		((i--))
	done
}

while $state
do
	echo "Max stack size is 10"
	read -p "Enter 1 for pop, 2 for push and 3 to exit: " choice

	case $choice in
		1) POP 
		   SHOW ;;

		2) read -p "Enter element to be pushed: " m
		   PUSH $m
		   SHOW ;;

		3) state=false;;
		*) echo "Wrong Choice"
	esac
done