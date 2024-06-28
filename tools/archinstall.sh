#!/bin/bash

# Variables here:
user = "zelda" # put your username here!
dirpath = "~/repos/" # this can be changed depending what directory you put your scripts into.

# initial setup for AUR:
cd /opt
sudo git clone https://aur.archlinux.org/yay-bin.git
sudo chown -R $user:users yay-bin
cd yay-bin
makepkg -si
cd

# Arch Setup:

sudo pacman -Syu

sudo pacman -R nano vim

sudo pacman -S lua neovim neofetch figlet starship python

# personal setup:
 cd  $dirpath
 git clone https://github.com/GuiltedRose/nvim.git

cd

# Rust setup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo.env"

# config setup:
mv "$dirpath/system-startup/Pictures" ~/
mv "$dirpath/system-startup/configs/config.conf" ~/.config/neofetch/config.conf
mv "$dirpath/nvim ~/.config/"
mv "$dirpath/system-startup/configs/starship.toml" ~/.config/

# Bash setup:
echo "alias vim=nvim" >> ~/.bashrc
echo "neofetch" >> ~/.bashrc
echo "figlet V3N0M0U5" >> ~/.bashrc
echo "My sting is far worse than you can imagine." >> ~/.bashrc
eval "$(starship init bash)"
