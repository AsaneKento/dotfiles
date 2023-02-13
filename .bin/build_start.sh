#!/bin/zsh

# Error Check
set -ue

echo ""
echo "#################################"
echo "#### Starting build dotfiles ####"
echo "#################################"
echo ""

# Check operating system
if [ "$(uname)" != "Darwin" ] ; then
	echo "#################################"
	echo "##### This OS isn't Support #####"
	echo "#################################"
  echo ""
	exit 1
fi
