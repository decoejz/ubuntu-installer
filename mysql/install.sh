#!/bin/bash

## Install mysql 8 client

echo -en "Would you like to install ${GREEN}mysql client 8${NC}? [Y/n] "
read -r INSTALL_CLIENT

if [ "$INSTALL_CLIENT" == "" ] || [ "$INSTALL_CLIENT" == "Y" ] || [ "$INSTALL_CLIENT" == "y" ]
then

  apt install mysql-client-core-8.0 -y
  echo "Mysql CLIENT installed"
else
  echo -e "Mysql CLIENT installation ${RED}jumped${NC}"
fi

# Install mysql server

echo -en "Would you like to install ${GREEN}mysql server${NC}? [Y/n] "
read -r INSTALL_SERVER

if [ "$INSTALL_SERVER" == "" ] || [ "$INSTALL_SERVER" == "Y" ] || [ "$INSTALL_SERVER" == "y" ]
then

  apt install mysql-server -y
  echo -e "Mysql SERVER installed\n"
  
  echo "To create new user login to mysql server with:"
  echo -e "    ${BLUE}sudo mysql${NC}\n"
  echo "Then just create a new SQL user with the username and password that you want"
  echo -e "    ${BLUE}CREATE USER 'newuser'@'127.0.0.1' IDENTIFIED BY 'user_password';${NC}"

else
  echo -e "Mysql SERVER installation ${RED}jumped${NC}"
fi
