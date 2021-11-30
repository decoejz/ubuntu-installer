#!/bin/bash

echo -en "Would you like to install ${GREEN}git${NC}? [Y/n] "
read -r INSTALL_GIT

if [ "$INSTALL_GIT" == "" ] || [ "$INSTALL_GIT" == "Y" ] || [ "$INSTALL_GIT" == "y" ]
then
  apt install git -y
  echo "Git installed"
else
  echo -e "Git installation ${RED}jumped${NC}"
fi
