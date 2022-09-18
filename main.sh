#main demo for Bash script
function hello() 
{
  echo Hello World
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
      decision"

# display options and prompt
select option in $menu; 
do
  echo "-------------------"
  # jump table like switch
  case $option in
    (exit) echo "goodby"; break;;
    (hello) hello;;
    (case) selection;;
    (if) decision;;
    # call external script 
    (while) source ./while.sh;;
    (until) source ./until.sh;;
    (for)   source ./for.sh;;
    (decision)   source ./decision.sh;;
    (selection)  source ./selection.sh;;
  esac
  echo "-------------------"
done

# end of program demo