#!/bin/bash

# Script Name:                  Loops
# Author:                       SEYED MEHDI HASHEMI SOHI
# Date of latest revision:      10/29/2023
# Purpose:                      Running process


# Declaration of array
names=(a b c d e)

#For loop 
for names in ${names[*]}
do 
    echo $names
done 