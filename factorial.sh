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
if [ $# == 0 ]; then
   echo "use: faxtorial.sh x "
   exit 1
fico
echo $(factorial $1)
