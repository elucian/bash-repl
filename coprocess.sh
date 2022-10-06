#!/bin/bash
coproc (echo $(whoami))                                   
echo "COPROC = ${COPROC[@]}"         
echo "COPROC_PID = ${COPROC_PID}"

# read the output from pipeline        
read -r user <&"${COPROC[0]}"
echo "Current user is: $user"