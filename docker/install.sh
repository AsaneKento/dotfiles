#!/bin/zsh

# Error Check
set -ue

echo ""
echo "Starting Setup Docker v2..."
echo ""
mkdir -p ~/.docker/cli-plugins
ln -sfn /opt/homebrew/opt/docker-compose/bin/docker-compose ~/.docker/cli-plugins/docker-compose

colima version

echo ""
echo "## Completed Setup Docker v2 ##"
echo ""
