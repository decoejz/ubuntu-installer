#!/bin/bash
echo "Initializing..."

if [ `whoami` != root ]
then
  echo "Please execute as root"
  exit
fi

GREEN="\033[0;32m" # Green color
RED="\033[0;31m" # Red color
NC='\033[0m' # No color

apt update -y
apt upgrade -y

source ./git/install.sh
source ./vscode/install.sh
source ./terminator/install.sh
source ./postman/install.sh
source ./discord/install.sh
source ./slack/install.sh
source ./nodejs/install.sh