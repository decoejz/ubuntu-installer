#!/bin/bash

echo -en "Would you like to install ${GREEN}postman${NC}? [Y/n] "
read -r INSTALL_POSTMAN

if [ "$INSTALL_POSTMAN" == "" ] || [ "$INSTALL_POSTMAN" == "Y" ] || [ "$INSTALL_POSTMAN" == "y" ]
then
  snap install postman
  echo "Postman installed"
else
  echo -e "Postman installation ${RED}jumped${NC}"
fi
