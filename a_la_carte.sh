#!/bin/bash

# Alias #
DIR="a_la_carte_func"
. $DIR/functions.sh
. $DIR/theme_list.sh
. $DIR/custom_theme.sh

# Functions #
displayChoice()
{
  textGreen "Choose a type of theming:"
  textGreen "1) Selected from list"
  textGreen "2) Custom theme"
  textGreen "3) Quit"
  read Choice -n 1
  clear
  if [ $Choice -eq '1' ];
    then
    textGreen "Selection from list..."
    selectThemeFromList
  elif [ $Choice -eq '2' ];
    then
    textGreen "Custom theme..."
    createCustomTheme
    displayChoice
  elif [ $Choice -eq '3' ];
    then
    exit
  else
    clear
    textRed "Invalid choice."
    displayChoice
  fi
}

clear
displayChoice

