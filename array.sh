# initialize an array
myArray=(1 2 "three" 4 "five")

#visit all elements
for t in ${myArray[@]}; do
  echo $t
done
echo "-------------------"

#visit all element by index
for t in ${!myArray[@]}; do
  echo ${myArray[$t]}
done