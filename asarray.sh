#!/bin/bash
declare -A map
map=([one]="first" [two]="second")

# print elements 
echo "keys:" ${!map[*]}
echo "vals:" ${map[*]}
echo
# add new elements
map+=([three]="third")
# iterate over elements
for e in ${!map[*]}
do
  echo "map[$e]=${map[$e]}"
done

