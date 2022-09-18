#main demo for Bash script
function hello
{
  echo Hello World
}

# function with parameter
function print
{
  echo $1
}

# start main program
echo "main menu"
echo "-------------------"
menu="exit 
      hello 
      if 
      while 
      until 
      for 
      case 
      decision
      selection
      print
      math
      return
"

# display options and prompt
select option in $menu; 
do
  echo "-------------------------------"
  # jump table like switch
  case $option in
    (exit) echo "goodby"; break;;
    (hello) hello;;
    (print) print "hello there";;
    (case) case.sh;;
    (if) decision;;
    # call external script 
    (while) source ./while.sh;;
    (until) source ./until.sh;;
    (for)   source ./for.sh;;
    (decision)   source ./decision.sh;;
    (selection)  source ./selection.sh;;
    (math) source ./math.sh;;
    (return) source ./return.sh;;
  esac
  echo "-------------------------------"
done

# end of program demo