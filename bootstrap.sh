#!/usr/bin/env bash

project_root="$(cd "`dirname "$0"`"; pwd)"

echo "Creating .tmux directories..."
mkdir -p ~/.tmux/plugins/

echo "Linking the configurations..."
rm ~/.tmux.conf
ln $project_root/dot-tmux.conf ~/.tmux.conf
rm ~/.tmux/dev
ln $project_root/dot-tmux/dev ~/.tmux/dev

echo "Installing TPM for tmux..."
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
