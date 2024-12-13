dirpath="$HOME/repos"
confpath="$HOME/.config"
clone="git clone"

$clone https://github.com/guiltedrose/nvim.git
mv $dirpath/nvim $confpath/
mv $dirpath/system-startup/configs/config.conf $confpath/neofetch/
mv $dirpath/system-startup/configs/starship.conf $confpath/
mv $dirpath/system-startup/Pictures $HOME
