#!/bin/bash

# functions #
installOB()
{
	echo $TDIR/$1/openbox-3
}

installGTK3()
{
	echo $TDIR/$1/gtk-3
}
installConky()
{
 # /home/bruno/.config/lxsession/Lubuntu
  autopath="$HOME/.config/lxsession/Lubuntu/autostart"
  filepath="$TDIR/$1/conky/.conkyrc"
  folderpath="$TDIR/$1/conky/.conky"
  grep -r --include "*" "@conky" $autopath
  OUT=$?
  echo $OUT
  if [ $OUT -eq 0 ]; then
    sed -i '5s|.*|@confy|' $autopath
  fi

  ls $filepath
  OUT=$?
  if [ $OUT -eq  0 ]; then
    cp $filepath $HOME
    ls $folderpath
    OUT=$?
    if [ $OUT -eq  0 ]; then
      cp $folderpath $HOME
    fi
#  conky -d
  fi

}

installTaskBar()
{
	echo $TDIR/$1/taskbar
}

installWallPaper()
{
	wDir="$TDIR/$1/wallpaper"
  path="$wDir/$(ls $wDir)"
  sed -i '5s|.*|wallpaper='$path'|' $HOME/.config/pcmanfm/lubuntu/desktop-items-0.conf
	#echo $path
}

installIconTheme()
{
	echo  $TDIR/$1
}

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
 #  git clone git@github.com:higheredme/hem_themes.git
  #cp -r hem_themes/Themes/* .
  #rm -rf hem_themes

  # multi choice from folder
  i=0
  themes=($(ls))
  clear
  echo "this dir" $thisDir
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
  case $type in
    "conky")
      echo "conky"
      installConky $selection
      ;;
    "openbox-3")
      echo "openbox"
      installOB $selection
      ;;
    "taskbar")
      echo "task-bar"
      installTaskBar $selection
      ;;
    "wallpaper")
      echo "wallpaper"
      installWallPaper $selection
      ;;
    "gtk-3")
      echo "gtk 3"
      installGTK3 $selection
      ;;
    "icons")
      echo "icons"
      installIconTheme $selection
      ;;
  esac
  done
lxpanel --profile pcmanfm
  #pcmanfm --desktop
}
