readme : guessinggame.sh
	touch README.md
	echo "The Title of the project: Peer-graded Assignment: Bash, Make, Git, and GitHub" > README.md
	echo "\nDate make ran at:" >> README.md
	date >> README.md
	echo "\nNumber of lines file guessinggame.sh contains:" >> README.md
	cat guessinggame.sh | wc -l >> README.md
