# demo for selection
options="one two three break"
# demonstrate selection
select x in $options; 
do
    # demonstrate case;
    if [ "$x" == "break" ]; then
       echo "done" 
       break # exit selection
    elif [ "$x" == "one" ]; then
       echo "one"
    else
       echo "other"
    fi #end if
done