#!/bin/bash

echo -n "Guess a number between 1 and 20: "

number=$((1 + $RANDOM % 20 ))
tries=5
num=0

for i in $(seq 1 $tries); do
    read guess
    if [[ $guess -eq $number ]]; then
        echo "Congratulations! You guessed the number in $i attempt(s)."
        exit 0
    elif [[ $guess -lt $number ]]; then
        echo "Your guess is too low. You have $(($tries - i)) attempts left."
    else
        echo "Your guess is too high. You have $(($tries -i)) attempts left."
    fi
num=$((num + 1))
done
echo "Sorry, you did not guess the number from $num attempt. The chosen number was $number."
echo "Game Over".
