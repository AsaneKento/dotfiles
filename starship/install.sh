#!/bin/zsh

# Error Check
set -ue

echo ""
echo "Starting Setup Starship..."
echo ""
if [ ! -d ${HOME}/.config ]; then
  echo ""
  echo "Execute create config folder..."
  echo ""
  mkdir -p ${HOME}/.config;
fi

ln -s -f -v ${PWD}/starship/starship.toml ${HOME}/.config/starship.toml


echo ""
echo "## Completed Setup Starship ##"
echo ""
