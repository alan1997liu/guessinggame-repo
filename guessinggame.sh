number_of_files=$(ls | wc -l)

function user_first_guess {
	echo "How many files do you think there are in the current directory?: "
	read user_guess
}

user_first_guess

while [[ $user_guess -ne $number_of_files ]]
do
	if [[ $user_guess -lt $number_of_files ]]
	then
		echo "Your guess was too low, guess a higher number: "
		read user_guess
	elif [[ $user_guess -gt $number_of_files ]]
	then
		echo "Your guess was too high, guess a lower number: "
		read user_guess
	fi
done
echo "You entered the correct number of files in the current directory. Well done!"
