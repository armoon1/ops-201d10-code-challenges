#!/bin/bash

# Script Name:                  Conditional
# Author:                       SEYED MEHDI HASHEMI SOHI
# Date of latest revision:      10/30/2023
# Purpose:                      Conditionals

#### STILL WORKING ON IT #######
#### STILL WORKING ON IT #######
#### STILL WORKING ON IT #######
#Create a script that detects if a file or directory exists, then creates it if it does not exist.
#Your script must use at least one array, one loop, and one conditional.
#name list in an array
names=("Bob" "Jack" "Sara")


#for loop
    for name in "${names[@]}"; do
    # Check if the name exists
    if [ -f "name" ]; then
        echo "$name exists."
    else
        # Create the name
        if [ -f "$name" ]; then
            touch "$name"
            echo "Created file: $name"
        else
            echo "Unknown type: $name"
        fi
    fi
done

