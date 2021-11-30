#!/bin/bash

echo -en "Would you like to install ${GREEN}slack${NC}? [Y/n] "
read -r INSTALL_SLACK

if [ "$INSTALL_SLACK" == "" ] || [ "$INSTALL_SLACK" == "Y" ] || [ "$INSTALL_SLACK" == "y" ]
then
  snap install slack --classic
  echo "Slack installed"
else
  echo -e "Slack installation ${RED}jumped${NC}"
fi
