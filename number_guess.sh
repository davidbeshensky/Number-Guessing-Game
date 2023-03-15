#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

ONBOARDING() {
echo -e "\n~~~Amazing Number Guessing Game ~~~PG\n" 
echo "Enter your username:" 
read USERNAME

USER_ID=$($PSQL "SELECT user_id FROM user_data WHERE user_name = '$USERNAME';")

if [[ $USER_ID ]]
then
  games_played=$($PSQL "SELECT COUNT(*) FROM games_data WHERE user_id = $USER_ID;")
  best_game=$($PSQL "SELECT MIN(score) FROM games_data WHERE user_id = $USER_ID;")
  echo "Welcome back, $USERNAME! You have played $games_played games, and your best game took $best_game guesses."
else
  $PSQL "INSERT INTO user_data (user_name) VALUES ('$USERNAME');"
  USER_ID=$($PSQL "SELECT user_id FROM user_data WHERE user_name = '$USERNAME';")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
fi

GUESS_MACHINE $USER_ID

}
GUESS_MACHINE() {
RANDOMINT=$($PSQL "SELECT ceil(random() * 1000)::int;")
GUESSES=0
GUESSED=0
echo -e "\nGuess the secret number between 1 and 1000:"
echo "$RANDOMINT"
while [[ $GUESSED = 0 ]]
do
  read GUESS
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo -e "\nThat is not an integer, guess again:"
  elif [[ $RANDOMINT = $GUESS ]]
  then
    ((GUESSES++))
    INSERTED_TO_GAMES=$($PSQL "INSERT INTO games_data(score, user_id) VALUES($GUESSES, $USER_ID)")
    GUESSED=1
    echo "You guessed it in $GUESSES tries. The secret number was $RANDOMINT. Nice job!"
  elif [[ $RANDOMINT -gt $GUESS ]] 
  then
    ((GUESSES++))
    echo "It's lower than that, guess again:"
  else
    ((GUESSES++))
    echo "It's higher than that, guess again:"
  fi
done

echo -e "\nThanks for playing :)\n"
}

ONBOARDING
