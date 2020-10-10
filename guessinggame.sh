function feedback() {
  if [ $1 -eq -1 ]
  then
    echo "Your guess is too low."
  elif [ $1 -eq 1 ]
  then
    echo "Your guess is too high."
  else
    echo "Your guess is correct!"
  fi
}


echo "Welcome to the guessing game!"
stop_cond=false
while [ "$stop_cond" = false ]
do
  read -p "Guess how many files are in the directory! " guess
  answer=$(ls | wc -l)
  if [ $guess -lt $answer ]
  then
    feedback -1
  elif [ $guess -gt $answer ]
  then
    feedback 1
  else
    feedback 0
    stop_cond=true
  fi
done
