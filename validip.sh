#!/bin/bash
# check for first parameter
if [ $# != 1 ]; 
then
    echo "Use: $0 ip-address"; exit 1
else
    ip=$1
fi
# check if parameter is an IP address
if [[ $ip =~ ^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ ]]
then
    echo "Valid IPv4 IP address"
elif [[ $ip =~ ^[A-Fa-f0-9:]+$ ]]
then
    echo "Maybe IPv6 IP address"
else
    echo "Invalid Address"
fi
