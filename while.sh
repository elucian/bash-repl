#source script
let x=0
echo "start x = 0"
while [[ $x -lt 10 ]]
do
     echo "x = $x"
     let x+=1
done
echo "final x = $x"

# note: do must be on next line
# otherwise the opperation do not work]
# compare numbers with -lt, -gt indead
# of ==, >  when use square brackets.
while (( $x > 0 ))
do
     echo "x = $x"
     let x-=1
done
echo "final x = $x"
