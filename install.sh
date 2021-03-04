echo "Installing dotfiles"

echo "Copying repositories"
ln -s -f ./.config ~/.config
ln -s -f ./.screenlayout ~/.screenlayout

echo "Copying files"
ln -s -f ./.bashrc ~/.bashrc
ln -s -f ./.vimrc ~/.vimrc
ln -s -f ./.emacs ~/.emacs
ln -s -f ./.xinitrc ~/.xinitrc
ln -s -f ./.Xresources ~/.Xresources

#TODO: Copy xorg.conf to the right place

xrdb ~/.Xresources
