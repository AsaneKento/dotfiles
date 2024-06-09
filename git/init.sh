#!/bin/zsh

# Error Check
set -ue

echo ""
echo "Starting Setup git..."
echo ""

ln -s -f -v ${PWD}/git/.commit_template ${HOME}/.commit_template
ln -s -f -v ${PWD}/git/.gitconfig ${HOME}/.gitconfig

echo ""
echo "## Completed Setup git ##"
echo ""
