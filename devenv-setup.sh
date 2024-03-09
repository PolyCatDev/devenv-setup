#!/bin/bash

# Initial prompt
echo -e "\e[31mATTENTION: All answers must be lowercase!\e[0m"
read -p "Do you wish to continue? (y/n) " INIT_ANSWER

if [[ $INIT_ANSWER != "y" ]]; then
	exit
fi

# Chacks if first argument is arch and launches the arch script if yes
if [[ $1 == "arch" ]]; then
    chmod +x ./arch.sh
    source ./arch.sh
else
    echo "Argument invalid or no arguments."
fi