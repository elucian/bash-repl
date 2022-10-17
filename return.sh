# a function that return result
function div {
   if (( $2 == 0 )); then
      return 1
   fi
   echo $(($1 / $2)); return 0
}
echo "enter 2 numbers"
read -p "a=" a
read -p "b=" b

# call and capture result using $?
d=$(div $a $b)
# error checking
if [ $? -gt 0 ]; then
   echo "division by 0 not supported"
   exit 1
else
   echo "$a / $b = $d"
   exit 0
fi
