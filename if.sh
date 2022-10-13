# simple decision branch
read -p "a=" a 
read -p "b=" b
if [[ "$a" -eq "$b" ]]
then 
  echo "a = b" 
elif [[   "$a" -lt "$b"  ]]
then
  echo "a < b"
elif [[  "$a" -gt "$b"  ]]
then
  echo "a > b"
else 
  echo error; exit 1
fi; exit 0