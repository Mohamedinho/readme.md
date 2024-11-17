count_files() {
    echo $(ls -1 | wc -l)
}
correct_count=$(count_files)
user_guess=-1

echo "Welcome to the Guessing Game!"
echo "Can you guess how many files are in the current directory?"

while [[ $user_guess -ne $correct_count ]]; do
    read -p "Enter your guess: " user_guess
    if [[ $user_guess -lt $correct_count ]]; then
        echo "Too low!"
    elif [[ $user_guess -gt $correct_count ]]; then
        echo "Too high!"
    else
        echo "Congratulations! You guessed it correctly!"
    fi
done
