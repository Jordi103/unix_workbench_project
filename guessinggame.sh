#!/bin/bash

nfiles=$(ls | wc -l)

echo "How many files are in the current directory?"
read guess

function compare {
	if [[ $guess > $nfiles ]]; then
		echo "It's actually less than $guess..."
	else
		echo "There are more than $guess files!"
	fi
}

echo "function ok"

while [[ $guess != $nfiles ]]; do
	echo "Wrong! Please guess again"
	compare	
	read guess
done;

echo "Correct! There's $nfiles files in this directory."
