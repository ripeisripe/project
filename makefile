README.md:
	touch README.md
	echo "## Title: Peer-graded Assignment: Bash, Make, Git, and GitHub." > README.md
	echo "" >> README.md
	echo "This is date and time make was run:" >> README.md
	ls -l README.md >> README.md 
	echo "The files guessinggame.sh contains this number of lines:" >> README.md
	wc -l guessinggame.sh | grep -o [0-9] >> README.md
	
