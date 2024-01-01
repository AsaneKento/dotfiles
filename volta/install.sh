#!/bin/zsh

# Error Check
set -ue


# voltaのインストール
echo ""
echo "Starting Install volta..."
echo ""

curl https://get.volta.sh | bash

# 最新バージョンのnodeをインストール
echo ""
echo "Starting Install node..."
echo ""

volta install node


echo ""
echo "## Completed Setup volta ##"
echo ""
