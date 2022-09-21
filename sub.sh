#command substitution

# display current date
echo $(date)

# list every word in a text file
for i in $(cat test.txt)
do
  echo $i
done