#!/bin/bash

if [ "$EUID" -ne 0 ]
    then echo "Please run as root"
    exit
fi

apt update
apt upgrade -y
apt autoremove

DEB_URLS=(
    https://discord.com/api/download?platform=linux
    https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64
    https://www.google.com/chrome/next-steps.html?brand=AJCO&gclid=EAIaIQobChMIncTevf-4kgMV5WlIAB3KVz2XEAAYASAAEgLRSvD_BwE&statcb=0&installdataindex=empty&defaultbrowser=0#
)

APT_PKGS=(
	build-essential libssl-dev zlib1g-dev ibguestfs-tools
	libbz2-dev libreadline-dev libsqlite3-dev curl git
	zsh libncursesw5-dev xz-utils tk-dev libxml2-dev
	libxmlsec1-dev libffi-dev liblzma-dev flatpak wget
	uuid-dev gh zio flatpak ninja-build libgtk-3-dev clang dos2unix
)

for i in "${APT_PKGS[@]}"
do
    echo "Installing package $i -------------------------"
    apt install "$i" -y
    echo "Package $i installation finished --------------"
done
apt --fix-broken install

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
