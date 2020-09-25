#!/usr/bin/env bash

echo "Welcome to The Guessing game version 1.0. Guess how many files are in the current directory"

function ask {
	echo "How many files are in the current directory?"
	read guess
    files=$(ls -1 | wc -l)
}

ask

while [[ $guess -ne $files ]]
do
	if [[ $guess -lt $files ]] 
	then
		echo "Sorry, that's too low, go higher."
	else
		echo "Sorry, that's too high, go lower"
	fi
	ask
done

echo "Congratulations! You've guessed correctly, here is the list of all files:"
echo "------" && ls -1