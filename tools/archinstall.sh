#!/bin/bash

# Variables here:
user="guiltedrose" # put your username here!
dirpath="~/repos" # this can be changed depending what directory you put your scripts into.

# initial setup for AUR:
if [ ! /opt/yay-bin ] ; then
	cd /opt
	sudo git clone https://aur.archlinux.org/yay-bin.git
	sudo chown -R $user:users yay-bin
	cd
fi

# Arch Setup:

sudo pacman -Syu

sudo pacman -R nano vim

sudo pacman -S lua neovim neofetch figlet starship python nerd-fonts nodejs gcc

# personal setup:
 cd  $dirpath/
 git clone https://github.com/GuiltedRose/nvim.git

 cd

# Rust setup
 curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
 source "$HOME/.cargo.env"

 # setup .bashrc
 echo "alias vim='nvim'" >> ~/.bashrc
 echo "neofetch" >> ~/.bashrc
 echo "figlet V3N0M0U5" >> ~/.bashrc
 echo "echo 'My sting is far worse than you can imagine.'" >> ~/.bashrc
 echo "eval "$(starship init bash)"" >> ~/.bashrc
