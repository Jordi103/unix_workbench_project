all: README

README:
	echo "#The Guessing Game" > README.md
	echo "This document was created at time" >> README.md
	date >> README.md
	echo "Finally, the number of lines of code contained in guessinggame.sh is" >> README.md
	wc -l guessinggame.sh | awk '{print $$1}' >> README.md
	
