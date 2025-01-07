# Clears the terminal before the operation <optional, but expected>
clear

# -p is used to pass a prompt
read -p "Enter the first number: " n

read -p "Enter the second number: " m

#'`' along with expr 
res=`expr $n + $m`
res1=`expr $n - $m`
res2=`expr $n / $m` 
res3=`expr $n \* $m`

echo "Addition: " $res
echo "Subtraction: " $res1
echo "Division: " $res2
echo "Multiplication: " $res3