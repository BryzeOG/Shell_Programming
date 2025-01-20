# Program to remove file with size 0
clear

read -p "Enter the file name 1: " name

# wc command give the line, word and character data for a file
char=$(wc -c < $name)

# removes the file if the character size is 0
if [ $char -eq 0 ]
	then 
	rm $name 
	echo "Done"
else
	echo "Non-empty file"
fi