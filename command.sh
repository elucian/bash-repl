# command group
a=0; (a=1;echo $a)
echo $a # expected 

# this works but surprize
b=$(x=1; x+=1; echo $x)
echo $b # expect 2, got 11

# this works but ... ugly
c=$(x=1; ((x+=1)); echo $x)
echo $c # expect 2