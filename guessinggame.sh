#!/usr/bin/env bash
filenum=$(ls | wc -l)

function filenumber_guess {
	read guessed
	if [[ $guessed -eq $filenumber ]]
	then
		echo " You guessed right!"
		echo "Hooooooray"
		echo "  So we have : $file file"
		for file in $(ls)
		do
			echo "  - $file and "
		done
		echo "    ... and that was it."
	else
		if [[ $guess -gt $filenum ]]
		then
			echo "The number is lower retry  and press Enter :"
			filenumber_guess
		else
			echo "The number is bigger retry and press Enter :"
			filenumber_guess
		fi
	fi
}
echo "Welcome to the guessing game!\n Guess how many files are in the current directory and press Enter "
filenumber_guess
