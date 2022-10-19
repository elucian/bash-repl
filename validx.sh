echo -n "Enter: > "
read num
if [[ $num =~ ^[0-9]+$ ]]
then
    echo Decimal
elif [[ $num =~ ^[A-Fa-f0-9]+$ ]]
then
    echo Hexadecimal
else
    echo Non-numeric
fi