all:README.md

README.md:
	echo "#The guessing game" >> README.md
	echo "This is the **Guessing Game**." >> README.md
	echo "##Rules" >> README.md
	echo "- Guess how many files there are in the current folder" >> README.md
	echo "- The program will tell you if you guessed too high, too low or correctly." >> README.md
	echo "- The program continues until you get it right." >> README.md
	echo "make was run on: " >> README.md
	date >> README.md
	echo "guessinggame.sh consists of the following number of lines: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
