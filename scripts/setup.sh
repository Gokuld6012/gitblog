#!/usr/bin/env bash


# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[1;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White
NC='\033[0m' # No Color

# Underline
UBlack='\033[4;30m'       # Black
URed='\033[4;31m'         # Red
UGreen='\033[4;32m'       # Green
UYellow='\033[4;33m'      # Yellow
UBlue='\033[4;34m'        # Blue
UPurple='\033[4;35m'      # Purple
UCyan='\033[4;36m'        # Cyan
UWhite='\033[4;37m'       # White

#function to check if command exists
function command_exists () {

    type "$1" &> /dev/null ;
}


#npm install

if [ $? == 0 ]
then
 echo "Done installing node dependencies!";

 if ! type electron &> /dev/null;
 then
    if [ "$EUID" -ne 0 ]
      then
      echo -e "${Red}Electron${NC} is not installed. use '${URed}npm install electron -g${NC}' to install it globally or run this script with ${URed}sudo${NC} permission"
      exit
    fi

    echo -e "Electron is not found. Installing electron";

    npm install electron -g

 fi

 npm start

fi


