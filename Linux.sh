#!/bin/bash

# Function to check command success
function check_command {
  if [ $? -ne 0 ]; then
    echo "Error while executing: $1"
    exit 1
  fi
}

# Update system packages
echo "Updating system..."
sudo apt update && sudo apt upgrade -y
check_command "System update and upgrade"

# Install essential tools
echo "Installing essential tools..."
sudo apt install -y build-essential curl wget git
check_command "Essential tools"

# Install Alacritty
echo "Installing Alacritty..."
sudo apt install -y alacritty || echo "Alacritty may not be available in default repositories."

# Install Kitty
echo "Installing Kitty..."
sudo apt install -y kitty || echo "Kitty may not be available in default repositories."

# Install Midnight Commander (MC)
echo "Installing Midnight Commander (MC)..."
sudo apt install -y mc
check_command "Midnight Commander"

# Install tldr
echo "Installing tldr..."
sudo apt install -y tldr
check_command "tldr"

# Install bat (with symlink)
echo "Installing bat..."
sudo apt install -y bat || sudo apt install -y batcat
check_command "bat"
sudo ln -s /usr/bin/batcat /usr/bin/bat  # Compatibility with command name


# Install ranger
echo "Installing ranger..."
sudo apt install -y ranger
check_command "ranger"

# Install ncdu
echo "Installing ncdu..."
sudo apt install -y ncdu
check_command "ncdu"

# Install lsd
echo "Installing lsd..."
sudo apt install -y lsd || echo "lsd may not be available in default repositories."

# Install axel
echo "Installing axel..."
sudo apt install -y axel || echo "axel may not be available in default repositories."

# Install ffmpeg
echo "Installing ffmpeg..."
sudo apt install -y ffmpeg
check_command "ffmpeg"

# Install Flatpak
echo "Installing Flatpak..."
sudo apt install -y flatpak
check_command "flatpak"
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Install micro text editor
echo "Installing micro text editor..."
sudo apt install -y micro || echo "micro may not be available in default repositories."

# Install thefuck
echo "Installing thefuck..."
sudo apt install -y python3-dev python3-pip
check_command "Python dependencies for thefuck"
pip3 install thefuck
check_command "pip3 installation of thefuck"

echo "All tools installed successfully!"
