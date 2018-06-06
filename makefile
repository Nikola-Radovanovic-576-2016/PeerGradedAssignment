all: README.md
README.md:
	touch README.md
	echo "# Guessing game project" > README.md
	echo -n "Date and time: " >> README.md
	date >> README.md
	echo -n "Number of lines in guessinggame.sh: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md 
