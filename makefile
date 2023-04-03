readme.md:
	echo "Github Guessing Game Assignment" > README.md
	date >> README.md
	echo -n "Number of lines of code in 'guessinggame.sh': " >> README.md
	cat guessinggame.sh | wc -l >> README.md

clean:
	rm README.md
