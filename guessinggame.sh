function guessinggame {
	number_of_files=$(ls wc | -l)
	echo "How many files do you think there are in the current directory?: "
	read user_guess

	while [[ $user_guess -ne $number_of_files ]]
	do
	echo "How many files do you think there are in the current directory?: "
	read user_guess
		if [[ $user_guess -lt $number_of_files ]]
		then
			echo "Your guess was too low, guess a higher number."
		elif [[ $user_guess -gt $number_of_files ]]
		then
			echo "Your guess was too high, guess a lower number."
		fi

		echo "You entered the correct number of files in the current directory. Well done!"
	done
}
