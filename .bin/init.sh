#!/bin/zsh

# Error Check
set -ue

# create path /usr/local/bin
if [ ! -d /usr/local/bin ]; then
  sudo mkdir -p /usr/local/bin;
fi

# Rosetta Setup
echo ""
echo "Starting Install Rosetta..."
echo ""

/usr/sbin/softwareupdate --install-rosetta --agree-to-license

echo ""
echo "## Completed Install Rosetta ##"
echo ""

# Xcode Setup
if [ ! -f /usr/bin/xcode-select ] ; then
  echo ""
  echo "Starting Install Xcode..."
  echo ""

  xcode-select --install

  echo ""
  echo "## Completed Install Xcode ##"
  echo ""
fi
