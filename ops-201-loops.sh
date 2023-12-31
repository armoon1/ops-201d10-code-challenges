#!/bin/bash

# Script Name:                  Loops
# Author:                       SEYED MEHDI HASHEMI SOHI
# Date of latest revision:      10/29/2023
# Purpose:                      
# Write a script that displays running processes, asks the user for a PID, then kills the process with that PID.
# Use a loop in your script.


 while true; do   
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
echo -e "\nEnter the PID of the process to kill (or press Ctrl + C to exit): "
read pid

# Use the $pid variable for further actions

kill $pid
done
# Declaration of array
#names=(a b c d e)
#count=4
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