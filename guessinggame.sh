#!/usr/bin/env bash
# File: guessinggame.sh

num_files=0
bool_guess=1
user_guess=1

num_files=$(ls -1 | wc -l)
function filecount {

	echo "Guess the number of files in the directory: "
	read user_guess
}

while [[ $bool_guess -ne 0 ]]
do
	filecount
	if [[ $user_guess -eq $num_files ]]
	then
		echo "You are correct! There are $num_files file(s) in the directory."
		let bool_guess=0
	elif [[ $user_guess -lt num_files ]]
	then
		echo "Incorrect. There are more than $user_guess file(s) in the directory. Try again."
	else
		echo "Incorrect. There are less than $user_guess file(s) in the directory. Try again."
	fi
done

