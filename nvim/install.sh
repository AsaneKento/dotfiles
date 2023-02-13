#!/bin/zsh

# Error Check
set -ue

echo ""
echo "Execute brew doctor..."
echo ""
if [ ! -d ${HOME}/.config/nvim ]; then
  mkdir -p ${HOME}/.config/nvim;
fi

ln -s -f -v ${PWD}/nvim/init.vim ${HOME}/.config/nvim/init.vim

echo ""
echo "Execute brew doctor..."
echo ""

echo ""
echo "## Completed Setup NVIM ##"
echo ""
