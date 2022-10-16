# define two functions
sum () (
  echo $(( $1 + $2 ))
)

function exp {
  echo $(( $1 ** $2 ))
}
