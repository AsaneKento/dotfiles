#!/bin/zsh

# Error Check
set -ue

# Homebrew Setup
if [ ! -f /opt/homebrew/bin/brew ] ; then
  echo ""
  echo "Starting Install homebrew..."
  echo ""

  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/opt/homebrew/bin/brew shellenv)"

  echo ""
  echo "## Completed Install Homebrew ##"
  echo ""
fi

# Homebrew setup
echo ""
echo "Execute brew doctor..."
echo ""
which /opt/homebrew/bin/brew >/dev/null 2>&1 && brew doctor
echo ""
echo "Execute brew update..."
echo ""
which /opt/homebrew/bin/brew >/dev/null 2>&1 && brew update --verbose
echo ""
echo "Execute brew upgrade..."
echo ""
which /opt/homebrew/bin/brew >/dev/null 2>&1 && brew upgrade --verbose

#
echo ""
echo "Execute install .Brewfile..."
echo ""
ln -s -f -v ${PWD}/brew/.Brewfile ${HOME}/.Brewfile
brew bundle --global


echo ""
echo "Execute brew cleanup..."
echo ""
which brew >/dev/null 2>&1 && brew cleanup --verbose

echo ""
echo "## Completed Setup Homebrew ##"
echo ""
