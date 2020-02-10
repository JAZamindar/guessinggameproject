#!/usr/bin/env bash
# File: guessinggame.sh by J Ahmed Zamindar

analyse_result_function()

{
	correctguess=`ls -1 | wc -l`

	randomfigures='^[0-9]+$'

	if ! [[ $1 =~ $randomfigures ]]; then

		echo "Please enter a valid numeric figure."

	elif [[ $1 -lt $correctguess ]]; then

		echo "Sorry, $1 was TOO LOW. Please guess a HIGHER number:"


	elif [[ $1 -gt $correctguess ]]; then

		echo "Sorry, $1 was TOO HIGH. Please guess a LOWER number:"


	elif [[ $1 -eq $correctguess ]];

	then 

		echo "Congratulations, you guessed correct! $1 is the correct number of files in the directory."

		echo "Total Guess Attempts: $amount_OF_guesses." 

	exit

	fi
}

clear
amount_OF_guesses=1

echo "Guess how many files are in the current directory"

while read response; do

analyse_result_function $response;

((amount_OF_guesses++))

done
