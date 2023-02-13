#!/bin/zsh

# Error Check
set -ue

echo ""
echo "Starting Setup NVIM..."
echo ""

if [ ! -d ${HOME}/.config/nvim ]; then
  echo ""
  echo "Execute create nvim folder..."
  echo ""
  mkdir -p ${HOME}/.config/nvim;
fi

ln -s -f -v ${PWD}/nvim/init.vim ${HOME}/.config/nvim/init.vim

echo ""
echo "## Completed Setup NVIM ##"
echo ""
