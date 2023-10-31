#!/bin/bash

# Script Name:                  Conditional
# Author:                       SEYED MEHDI HASHEMI SOHI
# Date of latest revision:      10/30/2023
# Purpose:                      Conditionals

shopping_list=(coke pepsi fanta water)

shopping_list_checker(){

    search_item="$1"

    for item in "${shopping_list[@]}"; do 
        echo $item 

        if [ "$item" == "$search_item" ]; then
        return 0
        fi 
    done
    return 1


}