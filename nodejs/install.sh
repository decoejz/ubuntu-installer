#!/bin/bash

echo -en "Would you like to install ${GREEN}nodejs lts${NC}? [Y/n] "
read -r INSTALL_NODE

if [ "$INSTALL_NODE" == "" ] || [ "$INSTALL_NODE" == "Y" ] || [ "$INSTALL_NODE" == "y" ]
then
  apt install curl -y
  echo "Curl installed"

  curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
  apt install nodejs -y
  echo "Nodejs installed"

  echo -en "Enable ${GREEN}yarn${NC}? [Y/n] "
  read -r ENABLE_YARN
  if [ "$ENABLE_YARN" == "" ] || [ "$ENABLE_YARN" == "Y" ] || [ "$ENABLE_YARN" == "y" ]
  then
    # Based on https://yarnpkg.com/getting-started/install
    # Enabling Corepack for Node.js>=16.10
    corepack enable
    echo "Yarn enabled"
  fi
else
  echo -e "Nodejs installation ${RED}jumped${NC}"
fi
