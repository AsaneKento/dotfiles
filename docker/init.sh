#!/bin/zsh

# Error Check
set -ue

echo ""
echo "Setting Setup colima..."
echo ""

mkdir -p ~/.colima/_templates
ln -s -f -v ${PWD}/docker/default.yaml ${HOME}/.colima/_templates/default.yaml


echo ""
echo "Starting Setup Docker v2..."
echo ""
mkdir -p ~/.docker/cli-plugins
ln -sfn /opt/homebrew/opt/docker-compose/bin/docker-compose ~/.docker/cli-plugins/docker-compose

colima version

echo ""
echo "## Completed Setup Docker ##"
echo ""
