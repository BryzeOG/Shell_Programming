# Clears the terminal before the operation <optional, but expected>

clear

# -p is used to pass a prompt

read -p "Enter the first number: " n
read -p "Enter the second number: " m

#'`' along with expr

res=`expr $n + $m`
res1=`expr $n - $m`

# echo passes the expression into bc(Basic calculator), we can do more complex calculations here
# scale sets the floating point precision

res2=`echo "scale=2;$n/$m" | bc` 
res3=`expr $n \* $m`
res4=`echo "scale=2;sqrt($n)" | bc`

echo "Addition: " $res
echo "Subtraction: " $res1
echo "Division: " $res2
echo "Multiplication: " $res3
echo "Squareroot: " $res4