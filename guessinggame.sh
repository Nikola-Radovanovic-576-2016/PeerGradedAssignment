guess (){
	found=0
	filenum=$(ls . | wc -l)
	response=
	echo "Welcome to the guessing game."
	echo "Guess how many files are there in the current directory."
	while [[ found -eq 0 ]]
	do
		echo "Enter a number to guess"
		read response
		if [[ response -gt filenum ]]
			then
			echo "Your guess is too high, please guess again."
		elif [[ response -lt filenum ]]
			then 
			echo "Your guess is too low, please guess again."
		else 
			echo "Congratulations! You guessed right!"
			found=1
		fi
	done
}
guess
