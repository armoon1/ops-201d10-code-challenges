#!/bin/bash

# Script Name:                  Functions
# Author:                       SEYED MEHDI HASHEMI SOHI
# Date of latest revision:      10/26/2023
# Purpose:                      VARIABLES
# Creates four directories: dir1, dir2, dir3, dir4

dir1="1.txt"
dir2="2.txt"
dir3="3.txt"
dir4="4.txt"


dir=("dir1" "dir2" "dir3" "dir4")
files=($dir1 $dir2 $dir3 $dir4)
#echo ${dir[*]}
# Put the names of the four directories in an array
# References the array variable to create a new .txt file in each directory

# Main
echo ${files[*]}
mkdir ${dir[*]}

for folder in "${dir[@]}"; do 
    touch $folder"/"$dir1
done



# End