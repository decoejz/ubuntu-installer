#!/bin/bash

if [ `whoami` == root ]
then
  echo "Please ${RED}DO NOT${NC} execute as root"
  exit
fi

echo -en "Installing ${GREEN}VS Code Extensions${NC}"

# Usefull VS Code extensions to help develop and coding

# Better comments
code --install-extension aaron-bond.better-comments

# Bracket Pair Colorized
code --install-extension coenraads.bracket-pair-colorizer

# Dracula At Night
code --install-extension bceskavich.theme-dracula-at-night

# ESLint
code --install-extension dbaeumer.vscode-eslint

# Git history
code --install-extension donjayamanne.githistory

# Git Lens - GIT supercharged
code --install-extension eamodio.gitlens

# HashiCorp Terraform
code --install-extension hashicorp.terraform

# Markdown PDF
code --install-extension yzane.markdown-pdf

# npm
code --install-extension eg2.vscode-npm-script

# Paste JSON as Code
code --install-extension quicktype.quicktype

# Prettier - Code formatter
code --install-extension esbenp.prettier-vscode

# Prettier ESLint
code --install-extension rvest.vs-code-prettier-eslint

# vscode-icons
code --install-extension vscode-icons-team.vscode-icons

# YAML
code --install-extension redhat.vscode-yaml


### Other extension not so used
# PlatformIO IDE
# code --install-extension platformio.platformio-ide

# Live Share
# code --install-extension ms-vsliveshare.vsliveshare

# Python
# code --install-extension ms-python.python
