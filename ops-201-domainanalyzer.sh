#!/bin/bash

# Script Name:                  Domain Analyzer
# Author:                       SEYED MEHDI HASHEMI SOHI
# Date of latest revision:      11/08/2023
# Purpose:                      whois
# Create a script that asks a user to type a domain, then displays information about the typed domain. Operations that must be used include:
# whois
# dig
# host
# nslookup
#Make a user input string. Presumably the string is a domain name such as Google.com.
read -p "Enter domain: " domain

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

