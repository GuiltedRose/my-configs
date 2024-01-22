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
sudo pacman -R nano
sudo pacman -R vim

sudo pacman -S lua
sudo pacman -S neovim
sudo pacman -S neofetch
sudo pacman -S figlet

# personal setup:
cd $dirpath
git clone https://github.com/GuiltedRose/nvim.git

cd


# Rust setup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# config setup:
mv $dirpath/configs/config.conf ~/.config/neofetch/config.conf
mv $dirpath/nvim ~/.config/

# Bash setup:
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)" --prefix=/usr/local
cp /usr/local/share/oh-my-bash/bashrc ~/.bashrc
echo "OMB_USE_SUDO=false" >> ~/.bashrc
echo "alias vim=nvim" >> ~/.bashrc
echo "source "$HOME/.cargo/env"" >> ~/.bashrc
echo "neofetch" >> ~/.bashrc
echo "figlet V3N0M0U5" >> ~/.bashrc
echo "echo "Mysting is far worse than you can imagine."" >> ~/.bashrc

