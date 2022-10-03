#redirect output of a subshel
#file dir.txt is overwritten
(ls -l) > dir.txt

#append at end of file dir.txt
(echo "done") >> dir.txt