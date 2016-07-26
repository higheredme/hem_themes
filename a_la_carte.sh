#!/bin/bash

# Alias #
CDIR="a_la_carte_func"
. $CDIR/functions.sh
. $CDIR/theme_list.sh
. $CDIR/custom_theme.sh

TDIR="$HOME/.themes"
DIR=$(pwd -P)

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

