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
echo "Execute install vim-plug..."
echo ""
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo ""
echo "## Completed Setup NVIM ##"
echo ""
