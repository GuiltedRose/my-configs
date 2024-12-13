dirpath="$HOME/repos"
confpath="$HOME/.config"
clone="git clone"

cd $dirpath

$clone https://github.com/guiltedrose/nvim.git
mv $dirpath/nvim $confpath/
mv $dirpath/system-startup/configs/config.conf $confpath/neofetch/
mv $dirpath/system-startup/configs/starship.toml $confpath/
mv $dirpath/system-startup/Pictures $HOME
