# define two functions
sum () (
  echo $(( $1 + $2 ))
)

function exp {
  echo $(( $1 ** $2 ))
}

#we study function call 
#in this script: external.sh