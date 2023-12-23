#!/bin/bash

# Script Name:                  lswh
# Author:                       SEYED MEHDI HASHEMI SOHI
# Date of latest revision:      10/31/2023
# Purpose:                      System info
# Uses grep to remove irrelevant information from the lshw output
# Add text to the output clearly indicating which component (such as CPU, RAM, etc.) the script is returning information about
# Runs as Root; you may execute the shell script with sudo or as Root

#search the output of lshw and return every line
lshw
#######
echo "assignment part 2"
lshw | grep "bridge"
#Add text to the output clearly indicating which component (such as CPU, RAM, etc.) the script is returning information about
# CPU Product, Vendor, Physical ID, Bus info, Width

cpu_info=$(lshw -class processor | grep -E 'product:|vendor:|bus:|physical ID:|width:')

# RAM
ram_info=$(lshw -class memory | grep -E 'description:|size:|clock:')

# GPU
gpu_info=$(lshw -class graphic | grep -E 'description:|size:|clock:')

# Nenwork
network_info=$(lshw -class network | grep -E 'description:|size:|clock:')

# CPU display
echo "CPU Information:"
echo "$cpu_info"


# RAM display
echo "RAM Information:"
echo "$ram_info"

# GPU display
echo "GPU Information:"
echo "$gpu_info"

# Network display
echo "NETWORK Information:"
echo "$network_info"