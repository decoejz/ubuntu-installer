#!/bin/bash

echo -en "Would you like to install ${GREEN}VS Code${NC}? [Y/n] "
read -r INSTALL_VS_CODE

SAVING_PLACE="/tmp"

if [ "$INSTALL_VS_CODE" == "" ] || [ "$INSTALL_VS_CODE" == "Y" ] || [ "$INSTALL_VS_CODE" == "y" ]
then
  wget -O "${SAVING_PLACE}/vscode.deb" "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"
  dpkg -i ${SAVING_PLACE}/vscode.deb
  echo "VS Code installed"
else
  echo -e "VS Code installation ${RED}jumped${NC}"
fi

