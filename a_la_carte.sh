#!/bin/bash

textGreen() {
	echo -n -e "\033[32m"
  echo  $1
  echo -n -e "\033[0m"
}

clear
textGreen "Choose a type of theming:"
textGreen "1) Selected from list"
textGreen "2) Custom theme"
textGreen "3) Quit"
read Choice -n 1
clear
if [ $Choice -eq '1' ];
then
  textGreen "Selection from list..."
elif [ $Choice -eq '2' ];
then
  textGreen "Custom theme..."
elif [ $Choice -eq '3' ];
then
  exit
fi

