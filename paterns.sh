#using pattern to list some files
pat=*[r]*e.*
echo "containing r ending with e"
echo "-------------------------"
ls -1 $pat

#using a loop
echo "-------------------------"
for file in $pat
do
   echo $file
done