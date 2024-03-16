#!/bin/bash
echo -e "\nHola Hackermen! script creado por @josuerom!\n"

sudo apt update -y && sudo apt upgrade -y
sudo apt install curl wget xclip vim ranger htop cmatrix g++ default-jdk default-jre snapd -y

sudo apt purge firefox -y
sudo cp -r .fonts/* /usr/share/fonts/

sudo snap install chromium
sudo snap install spotify
sudo snap install notion-snap-reborn
sudo snap install teams-for-linux
sudo snap install code --classic
sudo apt install .deb-install/ulauncher_5.15.6_all.deb -y
sudo apt install .deb-install/cpeditor-6.11.2-linux-amd64.deb -y

sudo mv cf /bin/
sudo mv .* ~/
mkdir -p ~/workspace ~/workspace/bin

echo -e "\nLISTO ya ha terminado todo de instalarse, configure."
