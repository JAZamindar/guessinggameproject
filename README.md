# Guessing Game Project

## Created by J Ahmed Zamindar
### Date 09/02/2020 at 1130 GMT

There are 22 lines of Code in this Project


```
!/usr/bin/env bash
# File: guessinggame.sh

clear
correctguess=999
amountOFguesses=0

echo "Guess how many files are in the current directory"

while read response; do
if [[ $response -eq $correctguess ]]; 
then break; 

else function welldone {

 echo "Congratulations, you guessed correct! "

}

if [[ $response -lt $correctguess ]]; then 
echo "Sorry, $response was TOO LOW. Please guess a HIGHER number:"
let amountOFguesses+=1


elif [[ $response -gt $correctguess ]]; then
echo "Sorry, $response was TOO HIGH. Please guess a LOWER number:"
let amountOFguesses+=1
fi 
fi

done

welldone && 
echo "$response was the correct number of files in the directory." &&
echo "You took guessed in $amountOFguesses tries."


```

Thank you, enjoy running the game.
