# command groups

# in same shell
a=0
{ ((a+=1)); echo $a; } # 1
echo "a=$a" #expected 1

# in a subshell
b=0
( ((b+=1)); echo $a; ) # 1
echo "b=$b" # expecte 0

