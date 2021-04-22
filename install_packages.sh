#required to run a desktop environment
sudo pacman -S xorg xorg-server xorg-xinit i3-gaps linux-headers nvidia-dkms nvidia-utils

#yaourt
sudo pacman -S base-devel git wget yajl

git clone https://aur.archlinux.org/package-query.git
cd package-query/
makepkg -si
cd ..

git clone https://aur.archlinux.org/yaourt.git
cd yaourt/
makepkg -si
cd ..

sudo rm -dR package-query/ yaourt/

#required to operate inside desktop environment
yaourt -S --noconfirm rxvt-unicode-pixbuf dmenu polybar terminus-font tamsyn-font ntfs-3g

#audio
yaourt -S --noconfirm alsa-utils pulseaudio pavucontrol
amixer set Master toggle

#other software
yaourt -S --noconfirm emacs firefox ranger mpv feh
