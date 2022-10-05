#!/bin/bash
#list script files
for fh in *.sh
do
  printf '_%.0s' {1..40}
  echo; echo "#file: $fh"
  i=0
  # display first 3 lines of code
  while read -r line; do
      echo $line
      if (( i == 3 )); then break; fi
      (( i++ ))
  done < $PWD/$fh
done
printf '=%.0s' {1..40}; echo