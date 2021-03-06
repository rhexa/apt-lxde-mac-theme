#!/bin/bash

sudo apt install lxappearance -y

mkdir ~/.themes
cd ~/.themes

# OpenBox theme
# SBColors_XOS.obt https://www.box-look.org/p/1336941/
wget -O SBColors_XOS.obt https://github.com/rhexa/apt-lxde-mac-theme/raw/main/openbox/SBColors_XOS.obt
tar -xvf SBColors_XOS.obt
rm SBColors_XOS.obt
# sed -ri 's#(<titleLayout>).*(</titleLayout>)#\1CIMLN\2#g' .config/openbox/lxde-rc.xml

# Plank
sudo apt install plank -y
cd ~/.local/share/plank/themes/
# plank theme https://www.gnome-look.org/p/1399398/
wget --content-disposition https://github.com/rhexa/apt-lxde-mac-theme/raw/main/plank/mcOS-BS-White-Stock.zip
unzip mcOS-BS-White-Stock.zip
rm mcOS-BS-White-Stock.zip

# Mac Icon
# McMuse.tar.xz https://store.kde.org/p/1348081
mkdir ~/.icons
cd ~/.icons
wget -O McMuse.tar.xz https://github.com/rhexa/apt-lxde-mac-theme/raw/main/icons/McMuse.tar.xz
tar -xvf McMuse.tar.xz
rm McMuse.tar.xz

# Cursor
# McMojave-cursors.tar.xz https://store.kde.org/p/1355701/
wget -O McMojave-cursors.tar.xz https://github.com/rhexa/apt-lxde-mac-theme/raw/main/icons/cursors/McMojave-cursors.tar.xz
tar -xvf McMojave-cursors.tar.xz
rm McMojave-cursors.tar.xz

# Compton
sudo apt install -y compton

# Wallpaper
mkdir -p ~/.wallpapers
cd ~/.wallpapers
curl -L https://wallpapercave.com/download/wallpapers-mac-wp3268411 -OJ
curl https://wallpapersbook.com/wp-content/uploads/2020/10/mac-wallpaper-download-7.jpg -OJ 


#############################################################################################################
mkdir -p ~/tmp
cd ~/tmp
# Restore openbox config file
wget -O lxde-rc.xml https://raw.githubusercontent.com/rhexa/apt-lxde-mac-theme/main/openbox/lxde-rc.xml
mkdir -p ~/.config/openbox/
mv lxde-rc.xml ~/.config/openbox/

# Restore plank config
wget -O plank.config https://raw.githubusercontent.com/rhexa/apt-lxde-mac-theme/main/plank/plank.config
cat plank.config | dconf load /net/launchpad/plank/docks/
# backup plank
# dconf dump /net/launchpad/plank/docks/ > plank.config

# Restore lxpanel config
wget -O panel https://raw.githubusercontent.com/rhexa/apt-lxde-mac-theme/main/themes/panel
mkdir -p ~/.config/lxpanel/LXDE/panels/
mv panel ~/.config/lxpanel/LXDE/panels/

# Restore lxsession config
wget -O desktop.conf https://raw.githubusercontent.com/rhexa/apt-lxde-mac-theme/main/themes/desktop.conf
mkdir -p ~/.config/lxsession/LXDE/
mv desktop.conf ~/.config/lxsession/LXDE/

# Restore pcmanfm/wallpaper config
wget -O desktop-items-0.conf https://raw.githubusercontent.com/rhexa/apt-lxde-mac-theme/main/wallpapers/desktop-items-0.conf
mv desktop-items-0.conf ./.config/pcmanfm/LXDE/

# Added plank and compton to autostart
mkdir -p ~/.config/lxsession/LXDE/
echo '@plank' >> ~/.config/lxsession/LXDE/autostart
echo '@compton' >> ~/.config/lxsession/LXDE/autostart
