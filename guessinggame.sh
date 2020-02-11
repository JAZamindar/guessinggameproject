

#!/usr/bin/env bash
# File: guessinggame.sh by J Ahmed Zamindar

clear
amount_OF_guesses=1
correctguess=`ls -l | wc -l`

analyse_result_function()
{
  randomfigures='^[0-9]+$'

  if ! [[ $1 =~ $randomfigures ]]; then
    echo "Please enter a valid numeric figure."
  elif [[ $1 -lt $2 ]]; then
    echo "Sorry, $1 was TOO LOW. Please guess a HIGHER number:"
  elif [[ $1 -gt $2 ]]; then
    echo "Sorry, $1 was TOO HIGH. Please guess a LOWER number:"
  elif [[ $1 -eq $2 ]]; then
    echo "Congratulations, you guessed correct! $1 is the correct number of files in the directory."
    echo "Total Guess Attempts: $amount_OF_guesses."
    exit
  fi
}

echo "Guess how many files are in the current directory"

while read response; do
    analyse_result_function $response $correctguess;
    ((amount_OF_guesses++))
done
