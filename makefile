all:README.md

README.md:
	echo -e "# The guessing game\n" >> README.md
	echo -e "This is the **Guessing Game**.\n" >> README.md
	echo -e "## Rules\n" >> README.md
	echo "- Guess how many files there are in the current folder" >> README.md
	echo "- The program will tell you if you guessed too high, too low or correctly." >> README.md
	echo -e "- The program continues until you get it right.\n" >> README.md
	echo "make was run on: " >> README.md
	date >> README.md
	echo -e "\n"
	echo "guessinggame.sh consists of the following number of lines: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
