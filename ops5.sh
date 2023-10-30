#!/bin/bash

# Script Name:                  Loops
# Author:                       SEYED MEHDI HASHEMI SOHI
# Date of latest revision:      10/29/2023
# Purpose:                      Running process


# Declaration of array
names=(a b c d e)
count=4
#For loop 
#for names in ${names[*]}
#do 
#    echo $names
#done 
#while loop


#while [ $count -gt 0 ]; do 
#    echo "Value of count is: $count"
#    count=$(($count -1))
#done 

#echo "The condition no longer true."
# Running process
 echo "Running process"
 ps aux
# Running process
#while true; do 
#    ps aux
#    read -p "ctrl+c  to exit"
#done 

 
# Ask the user for a PID
read -p "Enter a PID to interact with: " $pid

# Use the $pid variable for further actions
echo "You entered PID: $pid"
