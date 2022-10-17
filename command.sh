# subshell command group
echo
a=0
(a=1; echo "a=$a")  # expected 1
echo "a=$a"         # expected 0

# subshell command group
echo
a=0
{ a=1; echo "a=$a"; }  # expected 1
echo "a=$a"         # expected 0

# this works but surprize
echo
b=$(x=1; x+=1; echo $x)
echo "b=$b" # expect 2, got 11
if [ -z "$x" ]; then
   echo "x is undefined"
else
   echo "x=$x" # is x defined?
fi

# this works, oh my :/
echo 
c=$(x=1; ((x+=1)); echo $x)
echo "c=$c" # expect 2
