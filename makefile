all: README.md

README.md: guessing_game.sh
	touch README.md
	echo "## The Unix Workbench Project" > README.md
	echo "*by Johns Hopkins University on [coursera.org](https://www.coursera.org/learn/unix/home/welcome)
	echo "\n**Description**: Make a program called *guessinggame.sh*. This program will continuously ask the user to guess the number of files in the current directory, until they guess the correct number. The user will be informed if their guess is too high or too low. Once the user guesses the correct number of files in the current directory they should be congratulated.
	echo **Creation date**: `date '+%d/%m/%Y'`\n" >> README.md
	echo "Time: `date '+%H:%M:%S'`\n" >> README.md
	echo -n "\n**Number of lines in guessing_game.sh: **" >> README.md
	echo `wc -l guessinggame.sh | egrep -o '[0-9]+'` (including blank lines and comments)" >> README.md

clean:
	rm README.md

