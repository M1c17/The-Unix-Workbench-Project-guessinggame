all: README.md

README.md:
	touch README.md
	echo "## The Unix Workbench Project" >> README.md
	echo "*by Johns Hopkins University on [coursera.org](https://www.coursera.org/learn/unix/home/welcome) >> README.md
	echo "\n**Description:** Make a program called *guessing_game.sh*.This program will continuously ask the user to guess the number of files in the current directory, until they guess the correct number. The user will be informed if their guess is too high or too low. Once the user guesses the correct number of files in the current directory they should be congratulated.">> README.md
        echo "**Creation date**: date '+%d/%m/%Y'\n"  >> README.md
        echo "**Time:** date '+%d/%m/%Y'\n" >> README.md
        echo "**Number of lines in guessing_game.sh:**" >> README.md
	wc -l guessing_game.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
