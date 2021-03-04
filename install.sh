echo "Installing dotfiles"

echo "Copying repositories"
ln -s -f ~/.dotfiles/.config ~/.config
ln -s -f ~/.dotfiles/.screenlayout ~/.screenlayout

echo "Copying files"
ln -s -f ~/.dotfiles/.bashrc ~/.bashrc
ln -s -f ~/.dotfiles/.vimrc ~/.vimrc
ln -s -f ~/.dotfiles/.emacs ~/.emacs
ln -s -f ~/.dotfiles/.xinitrc ~/.xinitrc
ln -s -f ~/.dotfiles/.Xresources ~/.Xresources

#TODO: Copy xorg.conf to the right place

xrdb ~/.Xresources
