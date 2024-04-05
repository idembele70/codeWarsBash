accum () {
str=$1
length=${#str}
newStr=""
for((i=0; i < length; i++)); do
  currentChar="${str:i:1}"
  charRepetition=""
  for((j=0; j <= i; j++)); do
    charRepetition="$charRepetition${currentChar,,}"
  done
  if [ -z "$newStr" ]; then
    newStr="${charRepetition^}"
  else
    newStr="$newStr-${charRepetition^}"
  fi
done
echo $newStr
}

accum "$1"