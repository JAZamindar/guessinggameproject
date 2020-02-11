
README.md : 

	touch README.md
		echo -n "\nGuessing Game\n\n" > README.md
		date >> README.md
		echo -n "\nNumber of lines of code contained in guessinggame.sh: " >> README.md
		cat guessinggame.sh | wc -l >> README.md
		echo -n "\nCreated by J Ahmed Zamindar\n\n" >> README.md
