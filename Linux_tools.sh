#!/bin/bash

echo "Updating system..."
sudo apt update && sudo apt upgrade -y

echo "Installing essential tools..."
sudo apt install -y build-essential curl wget git

echo "Installing Alacritty..."
sudo apt install -y alacritty

echo "Installing Kitty..."
sudo apt install -y kitty

echo "Installing Midnight Commander (MC)..."
sudo apt install -y mc

echo "Installing tldr..."
sudo apt install -y tldr

echo "Installing bat..."
sudo apt install -y bat
sudo ln -s /usr/bin/batcat /usr/bin/bat  # For compatibility with the command name

echo "Installing exa..."
sudo apt install -y exa

echo "Installing ranger..."
sudo apt install -y ranger

echo "Installing ncdu..."
sudo apt install -y ncdu

echo "Installing lsd..."
sudo apt install -y lsd

echo "Installing axel..."
sudo apt install -y axel

echo "Installing ffmpeg..."
sudo apt install -y ffmpeg

echo "Installing Flatpak..."
sudo apt install -y flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo "Installing micro text editor..."
sudo apt install -y micro

echo "Installing thefuck..."
sudo apt install -y python3-dev python3-pip
pip3 install thefuck

echo "All tools installed successfully!"
