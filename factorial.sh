#recursive function
function factorial {
  local n=$1
  local r=1
  if (( $n > 1 )) 
  then
     r=$(( $n * $(factorial $(($n - 1)) ) ))
  fi
  echo $r; return 0
}
#use parameter 
echo $(factorial $1)
