#!/bin/bash
#list script files
for fhnd in f*.sh
do
  printf '_%.0s' {1..30}
  echo; echo "#file: $fhnd"
  i=0
  # display first 3 lines 
  while read -r line; do
      echo $line
      if (( i == 3 )); then
         break; 
      fi
      (( i++ ))
  done < $PWD/$fhnd
  echo "..."
done
printf '=%.0s' {1..30} 
echo