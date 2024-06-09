#!/bin/zsh

# Error Check
set -ue

echo ""
echo "Starting Setup Vim..."
echo ""

ln -s -f -v ${PWD}/vim/.vimrc ${HOME}/.vimrc

echo ""
echo "## Completed Setup Vim ##"
echo ""
