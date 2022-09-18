# a function that return result
function sum {
   return $(($1 + $2))
}
echo "enter 2 numbers"
read -p "a=" a
read -p "b=" b

# call and capture result using $?
sum $a $b ; echo "sum($a,$b) =" $?