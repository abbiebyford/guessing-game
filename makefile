README.md:
	touch README.md
	echo "Guessing Game Project" > README.md
	echo "The time the makefile was ran:" >> README.md
	(date +%x-%X) >> README.md
	echo "Number of Lines in the guessing game code is:" >> README.md
	wc -l < guessinggame.sh >> README.md

clean:
	rm README.md
