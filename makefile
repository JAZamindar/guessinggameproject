
README.md : 

	touch README.md
	
	echo -n "\nGuessing Game\n" > README.md

	date >> README.md

	echo -n "Number of lines of code contained in guessinggame.sh: " >> README.md

	cat guessinggame.sh | wc -l >> README.md
