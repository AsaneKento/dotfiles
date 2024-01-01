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

echo ""
echo "Execute install AstroNvim..."
echo ""
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim

echo ""
echo "Execute install AstroNvim SetUp..."
echo ""
git clone git@github.com:AsaneKento/astro-nvim.git ~/.config/nvim/lua/user

echo ""
echo "## Completed Setup NVIM ##"
echo ""
