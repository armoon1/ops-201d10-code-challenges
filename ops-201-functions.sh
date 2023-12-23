#!/bin/bash

# Script Name:                  Function
# Author:                       SEYED MEHDI HASHEMI SOHI
# Date of latest revision:      10/25/2023
# Purpose:                      
# Write a function that prints the login history of users on this computer, followed by the text “This is the login history”.
# In your script, call that function three times.
# Use the same template introduced in Challenge02.
# Declaration of variables
Apple_price=5
files=`ls`
Code_writer=`whoami`
A=1
B=2
# Declaration of functions
print_login(){
    last 
    echo "This is login history"
}

# Main
# Calling the function

print_login
print_login
print_login

echo "The price of apple is: $Apple_price"
echo "Hello"
echo "This folder contains $files"
echo "The person scripting is: $Code_writer"
# End