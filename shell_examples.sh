#!/bin/bash

# Get arguments from command line
echo "Total arguments : $#"
echo "1st Argument = $1"
echo "2nd argument = $2"
bash command_line.sh Linux Hint

# Get user input
echo "Enter Your Name"
read name
echo "Welcome $name to LinuxHint"

# If-Else example
echo "Enter your lucky number"
read n

if [ $n -eq 101 ];
then
echo "You got 1st prize"
elif [ $n -eq 510 ];
then
echo "You got 2nd prize"
elif [ $n -eq 999 ];
then
echo "You got 3rd prize"

else
echo "Sorry, try for the next time"
fi

# For loop
for (( counter=10; counter>0; counter-- ))
do
echo -n "$counter "
done
printf "\n"

# Function with parameters
Rectangle_Area() {
area=$(($1 * $2))
echo "Area is : $area"
}

Rectangle_Area 10 20
