#!/bin/bash

# Variables here:
user = "guiltedrose" # put your username here!
dirpath = "~/repos/"

# initial setup for AUR:
cd /opt
sudo git clone https://ur.archlinux.org/yay-bin.git
sudo chown -R $user:users yay-bin
cd yay-bin
makepkg -si
cd

# Arch Setup:
sudo pacman -R nano
sudo pacman -R vim

sudo pacman -S lua
sudo pacman -S neovim
sudo pacman -S neofetch
sudo pacman -S figlet


# Rust setup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# config setup:
mv $dirpath/configs/config.conf ~/.config/neofetch/config.conf

# Bash setup:
echo "alias vim=nvim" >> ~/.bashrc
echo "$HOME/.cargo/env" >> ~/.bashrc
echo "neofetch" >> ~/.bashrc
echo "figlet V3N0M0U5" >> ~/.bashrc
echo "echo "Mysting is far worse than you can imagine."" >> ~/.bashrc

