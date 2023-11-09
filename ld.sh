#!/bin/bash

# Script Name:                  whois
# Author:                       SEYED MEHDI HASHEMI SOHI
# Date of latest revision:      11/08/2023
# Purpose:                      whois

#Make a user input string. Presumably the string is a domain name such as Google.com.
read -p "Enter domain: " 

read "Domain: $domain"

domain_info (){

#Run whois against a user input string.
  whois $domain

#Run dig against the user input string.
    dig $domain

#Run host against the user input string.
  host $domain

#Run nslookup against the user input string.
  nslookup $domain
}
#Output the results to a single .txt file, open with notepad
domain_info > domain_info.txt

