#!/bin/bash

# Script Name:                  
# Author:                       SEYED MEHDI HASHEMI SOHI
# Date of latest revision:      10/31/2023
# Purpose:                      


#search the output of lshw and return every line
lshw
#######
echo "assignment part 2"
lshw | grep "bridge"
#Add text to the output clearly indicating which component (such as CPU, RAM, etc.) the script is returning information about
# Get information about the CPU
cpu_info=$(lshw -class processor | grep -E 'product:|vendor:|width:')

# Get information about RAM
ram_info=$(lshw -class memory | grep -E 'description:|size:|clock:')

# Display the CPU information with a label
echo "CPU Information:"
echo "$cpu_info"


# Display the RAM information with a label
echo "RAM Information:"
echo "$ram_info"