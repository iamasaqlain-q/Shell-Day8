#!/usr/local//bin/bash -x
MAXCOUNT=10
count=1

while [ "$count" -le $MAXCOUNT ]; do
 dice[$count]=$(((RANDOM%6+1)))
 let "count += 1"
done
echo "${dice[@]}"
for((i=0; i < ${#dice[@]}; i++))
do
  if [[ ${dice[i]} -eq 6 ]]
  then
   echo "${dice[i]}" 

  fi
done

