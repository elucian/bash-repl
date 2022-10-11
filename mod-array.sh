#!/bin/bash
declare -a dec=({1..3})
declare -a hex=(16"#"A{A..C})
echo dec=${dec[*]}
echo hex=${hex[*]}
# union between two arrays
array=(${dec[*]} ${hex[*]})
echo array=${array[*]}
# add elements using range
dec+=({7..9})
echo dec=${dec[*]}
# modify element by element
(( dec[0]++  ))
(( dec[1]++  ))
(( dec[2]+=1 ))
(( dec[3]=0, dec[4]=0, dec[5]=0 ))
echo dec=${dec[*]}
