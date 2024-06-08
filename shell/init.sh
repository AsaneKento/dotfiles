#!/bin/zsh

# Error Check
set -ue

source ${PWD}/utils/check_os.sh

echo ""
echo "Starting Setup zsh..."
echo ""

ln -s -f -v ${PWD}/shell/.zshrc ${HOME}/.zshrc
ln -s -f -v ${PWD}/shell/.zprofile ${HOME}/.zprofile

echo ""
echo "## Completed Setup zsh ##"
echo ""
