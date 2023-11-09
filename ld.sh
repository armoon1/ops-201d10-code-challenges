#!/bin/bash

# Script Name:                  whois
# Author:                       SEYED MEHDI HASHEMI SOHI
# Date of latest revision:      11/08/2023
# Purpose:                      whois

#Make a user input string. Presumably the string is a domain name such as Google.com.
read  -p "Enter domain: " domain
if [ -z "$domain"]; then
    echo "Enter a domain name"
    exit 1
fi
echo "Domain: $domain"

#Run whois against a user input string.
whois $domain

#Run dig against the user input string.
dig $domain

#Run host against the user input string.
host $domain

#Run nslookup against the user input string.
nslookup $domain

#Output the results to a single .txt file, open with notepad
output_file="output.txt"
echo "output file is at $output_file"

if command -v notepad.exe &> /dev/null; then
  notepad.exe $output_file
else
  echo  "Not open in Ubuntu"
fi
