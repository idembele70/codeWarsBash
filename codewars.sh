greatest=0
smallest=0
result=0
if (($1 > $2)); then
  greatest=$1
  smallest=$2
else
  greatest=$2
  smallest=$1
fi

for ((i=$smallest; i <= greatest; i++))
do
  result=$(( result + i ))
done

echo $result