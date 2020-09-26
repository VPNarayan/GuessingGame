all: README.md

README.md: guessinggame.sh
	echo "The Unix Workbench course assignment" > README.md
	echo -n "Make date: " >> README.md
	date >> README.md
	echo -n "Number of lines in guessinggame.sh:" >> README.md
	wc -l guessinggame.sh >> README.md
	chmod a-w README.md