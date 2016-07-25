#!/bin/bash

# functions #
selectThemeFromList()
{
  # We create directory .themes if it doesn't exist
  ls ~/.themes
  OUT=$?
  if [ $OUT -ne 0 ]; then
     mkdir ~/.themes
  fi
  clear
  # We generate multiple choice depending on themes in git hub repo
  # Getting repo from github
  cd ~/.themes
  git clone git@github.com:higheredme/hem_themes.git
  cp -r hem_themes/Themes/* .
  rm -rf hem_themes

  # multi choice from folder
  i=0
  themes=($(ls))
  clear
  echo "Choose a theme"
  for index in ${!themes[@]}; do
    textGreen $[i+1]") ${themes[$i]}"
    i=$[i+1]
  done

  read choice
  choice=$[choice-1]
  selection=${themes[$choice]}
  echo " You have picked Theme :" $selection
  items=($(ls $selection))
  for i in ${!items[@]}; do
  type=${items[$i]}
  echo $type
  case $type in
    "conky")
      echo "conky";;
    "openbox-3")
      echo "openbox";;
    "taskbar")
      echo "task-bar";;
    "wallpaper")
      echo "wallpaper";;
    "gtk-3")
      echo "gtk 3";;
  esac
  done
}
