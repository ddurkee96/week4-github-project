readme.md:
	echo "# Github Guessing Game Assignment \n" > README.md
	echo -n "Date and time makefile was run: " >> README.md
	date >> README.md
	echo -n "\nNumber of lines of code in 'guessinggame.sh': " >> README.md
	cat guessinggame.sh | wc -l >> README.md

clean:
	rm README.md
