#!/bin/zsh

# Error Check
set -ue

echo ""
echo "Starting Setup iTerm..."
echo ""

mkdir -p ~/.iterm
ln -s -f -v ${PWD}/iterm/com.googlecode.iterm2.plist ${HOME}/.iterm/com.googlecode.iterm2.plist

echo ""
echo "## Completed Setup iTerm ##"
echo ""
