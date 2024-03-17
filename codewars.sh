DNA="ATTGC"
Result=""
for ((i = 0; i < ${#DNA}; i++)); do
  if [ ${DNA:i:1} = "A" ]; then
    result="${result}T"
  elif [ ${DNA:i:1} = "T" ]; then
    result="${result}A"
    elif [ ${DNA:i:1} = "G" ]
    then
    result="${result}C"
  else
    result="${result}G"
  fi
done

echo $result