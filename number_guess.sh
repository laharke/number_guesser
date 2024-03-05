#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
#get username
echo "Enter your username:"
read USERNAME


USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")
if [[ $USER_ID ]]
then
  #get games played
  GAMES_PLAYED=$($PSQL "select count(user_id) from games where user_id = '$USER_ID'")
  #get best game (guess)
  BEST_GUESS=$($PSQL "select min(guesses) from games where user_id = '$USER_ID'")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GUESS guesses."
else
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  result=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  USER_ID=$($PSQL "select user_id from users where username = '$USERNAME'")
fi

#Aca deberia JUGar podria poner una FC pero fue.
echo "Guess the secret number between 1 and 1000:"
#Aca necesito un while que preugnte hasta que le pegue
#que tambien chequeee si es menos o mayor
RANDOM_NUMBER=$((1 + RANDOM % 1000))
NUMBER_OF_GUESSES=1
while [[ $GUESS != $RANDOM_NUMBER ]]
do
  read GUESS
  if [[ $GUESS =~ ^[0-9]+$ ]]
  then
    #Ver si es mayor o menor
    #echo $RANDOM_NUMBER
    if [[ $GUESS -eq $RANDOM_NUMBER ]]
    then
      break
    fi

    #echo $GUESS
    if [[ $GUESS -gt $RANDOM_NUMBER ]]
    then
      #es menor
      echo "It's lower than that, guess again:"
    else
      #es mayor
      echo "It's higher than that, guess again:"
    fi
    ((NUMBER_OF_GUESSES+=1))
  else
    #El guess no es un number.
    echo "That is not an integer, guess again:"
  fi
done
#si sale del while es que le pego el numero y es lo mismo;
#Insertar el game jugado en la tabla
RESULT=$($PSQL "INSERT INTO games(guesses, user_id) VALUES($NUMBER_OF_GUESSES, $USER_ID)")

echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $RANDOM_NUMBER. Nice job!"