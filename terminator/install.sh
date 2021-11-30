#!/bin/bash

echo -en "Would you like to install ${GREEN}terminator${NC}? [Y/n] "
read -r INSTALL_TERMINATOR

if [ "$INSTALL_TERMINATOR" == "" ] || [ "$INSTALL_TERMINATOR" == "Y" ] || [ "$INSTALL_TERMINATOR" == "y" ]
then
  apt install terminator -y
  echo "Terminator installed"
else
  echo -e "Terminator installation ${RED}jumped${NC}"
fi
