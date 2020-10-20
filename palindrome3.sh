#! /bin/bash 

#Author : Akash Suchak
#Check from 3 Number which are palindrom number or not

#3 digit ranoms number
number1=$(((RANDOM%900) + 100))
number2=$(((RANDOM%900) + 100))
number3=$(((RANDOM%900) + 100))


arr=($number1 $number2 $number3)

for (( i=0; i<${#arr[@]}; i++))
do
	temp=${arr[$i]}
	rem=0
	rev=""

	while [ ${arr[$i]} -gt 0 ]
	do
	    # Get Remainder
	    rem=$(( ${arr[$i]} % 10 ))

	    # Get next digit
	    arr[$i]=$(( ${arr[$i]} / 10 ))

	    # Store previous number and
	    # current digit in reverse
	    rev=$( echo ${rev}${rem} )
	done

	if [ $temp -eq $rev ]; 
	then
	    echo "$temp is palindrome"
	else
	    echo "$temp is NOT palindrome"
	fi
done
