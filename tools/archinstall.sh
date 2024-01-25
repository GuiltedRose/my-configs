#!/bin/bash

# Variables here:
user = "guiltedrose" # put your username here!
dirpath = "~/repos/" # this can be changed depending what directory you put your scripts into.

# initial setup for AUR:
cd /opt
sudo git clone https://ur.archlinux.org/yay-bin.git
sudo chown -R $user:users yay-bin
cd yay-bin
makepkg -si
cd

# Arch Setup:

sudo pacman -Syu

sudo pacman -R nano
sudo pacman -R vim

sudo pacman -S lua
sudo pacman -S neovim
sudo pacman -S neofetch
sudo pacman -S figlet
sudo pacman -S starship
sudo pacman -S python # make sure it's updated before doing a system update.

# personal setup:
cd $dirpath
git clone https://github.com/GuiltedRose/nvim.git

cd


# Rust setup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo.env"
# config setup:
mv $dirpath/system-startup/Pictures ~/
mv $dirpath/system-startup/configs/config.conf ~/.config/neofetch/config.conf
mv $dirpath/nvim ~/.config/
mv $dirpath/system-startup/configs/starship.toml ~/.config/
# Bash setup:
echo "alias vim=nvim" >> ~/.bashrc
echo "neofetch" >> ~/.bashrc
echo "figlet V3N0M0U5" >> ~/.bashrc
echo "echo "Mysting is far worse than you can imagine."" >> ~/.bashrc
eval "$(starship init bash)"
