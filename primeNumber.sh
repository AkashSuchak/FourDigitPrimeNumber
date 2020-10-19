#! /bin/bash

#Author : Akash Suchak
#Generate a four digit number till you find a prime number.
#Please use RANDOM to genrerate 4 digit number and count the numbers for generated numbers too while doing so

#varibles
count=0

#Loop till get Desired output
while (true)
do
        number=$(((RANDOM%9000) + 1000 ))
        #echo "Generated Number : " $number


        for((i=2;i<=$(($number/2));i++))
        do
                count=$(($count + 1))

                #Check For Prime Number
                check=$(("$number" % "$i"))
                if [ "$check" -eq 0 ]; then
                        break
                fi
        done
        echo "$number is Prime Number"
        break
done
echo "Count : " $count

