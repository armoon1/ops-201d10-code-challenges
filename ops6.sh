#!/bin/bash

# Script Name:                  Conditionals
# Author:                       SEYED MEHDI HASHEMI SOHI
# Date of latest revision:      10/29/2023
# Purpose:                      Loops
#Create a script that detects if a file or directory exists, then creates it if it does not exist.
#Your script must use at least one array, one loop, and one conditional.
letters=(a b c d e)


#function 
letter_checker(){
    search="$1"
#for loop for cheching every letter
    for letter in "${search[@]}"; do 
        echo $letter
        #check if it's in the list
        if [ "$letter" == "search" ]; then
            return 0 #letter exists
        fi 
    done
    return 1

}