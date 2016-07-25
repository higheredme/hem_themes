#!/bin/bash

# Functions #
textGreen()
{
  echo -n -e "\033[32m"
  echo  $1
  echo -n -e "\033[0m"
}


textRed()
{
  echo -n -e "\033[31m"
  echo  $1
  echo -n -e "\033[0m"
}
