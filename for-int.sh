# For loop interuptions
for (( i=0; i<=100; i++ ))
do
   # Output only even numbers
   if ((  i % 2 == 0 )); then
      echo "Element $i"
      continue
   fi
   if (( i > 20 )); then
      break
   fi
done