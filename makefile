##!/usr/bin/env bash

README.md : 

	touch README.md
	
	echo "Guessing Game " > README.md

	date >> README.md

	echo "Number of lines of code contained in guessinggame.sh: " >> README.md

	cat guessinggame.sh | wc -l >> README.md
