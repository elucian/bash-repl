#!/bin/bash
#read standard input
while read line
do
  echo $line
done < /dev/stdin

#demo this script using input 
#redirect like in example:
#bashinput.sh < test.txt