files=( * )

function guessinggame {
echo "How many files are in the current directory?"
echo "Please type in your guess"
while read response; do
	if [[ $response -eq ${#files[@]} ]]; then
		break;
	else
	if [[ $response -gt ${#files[@]} ]]; then
		echo "Your guess is too high, guess again: "
	elif [[ $response -lt ${#files[@]} ]]; then
		echo "Your guess is too low, guess again: "
	fi
	fi
done
echo "Your guess is correct"
}


echo "If you want to play the  game type in guessinggame, if you don't type in anything else."
read ans
if [[ $ans == "guessinggame" ]]
then guessinggame;
else
	echo "no problem if you dont want to play!"
fi
