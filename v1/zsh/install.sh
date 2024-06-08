#!/bin/zsh

# Error Check
set -ue

echo ""
echo "Starting Setup zsh..."
echo ""

ln -s -f -v ${PWD}/zsh/.zshrc ${HOME}/.zshrc
ln -s -f -v ${PWD}/zsh/.zprofile ${HOME}/.zprofile

echo ""
echo "## Completed Setup zsh ##"
echo ""
