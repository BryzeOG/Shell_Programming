# Command-line argument program. The first argument is $1, then $2 and so on.
# $0 refers to the the command itself.
# $* refers to all the arguments as a single string.
# $@ refers to all the argument as individual string.
# $# gives the number of arguments.

echo "First input:" $1
echo "Second input:" $2

res=`expr $1 + $2`
echo "Result: " $res
echo "Command: " $0
echo "All Arguments: " $*
echo "All Arguments Individual: " $@
echo "Total arguments: " $#