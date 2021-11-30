#!/bin/bash

echo -en "Would you like to install ${GREEN}discord${NC}? [Y/n] "
read -r INSTALL_DISCORD

if [ "$INSTALL_DISCORD" == "" ] || [ "$INSTALL_DISCORD" == "Y" ] || [ "$INSTALL_DISCORD" == "y" ]
then
  snap install discord
  echo "Discord installed"
else
  echo -e "Discord installation ${RED}jumped${NC}"
fi
