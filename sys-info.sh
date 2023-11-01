#!/bin/bash

# Script Name:                  lswh
# Author:                       SEYED MEHDI HASHEMI SOHI
# Date of latest revision:      10/31/2023
# Purpose:                      System info


#search the output of lshw and return every line
lshw
#######
echo "assignment part 2"
lshw | grep "bridge"
#Add text to the output clearly indicating which component (such as CPU, RAM, etc.) the script is returning information about
# CPU
cpu_info=$(lshw -class processor | grep -E 'product:|vendor:|width:')

# RAM
ram_info=$(lshw -class memory | grep -E 'description:|size:|clock:')

# CPU display
echo "CPU Information:"
echo "$cpu_info"


# RAM display
echo "RAM Information:"
echo "$ram_info"