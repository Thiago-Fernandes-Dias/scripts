#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

apt update
apt upgrade -y
apt autoremove

APT_PKGS=(
	build-essential libssl-dev zlib1g-dev
	libbz2-dev libreadline-dev libsqlite3-dev curl git
	zsh libncursesw5-dev xz-utils tk-dev libxml2-dev
	libxmlsec1-dev libffi-dev liblzma-dev
	uuid-dev
)

for i in "${APT_PKGS[@]}"
do
	 echo "Installing package $i -------------------------"
   apt install "$i" -y
   echo "Package $i installation finished --------------"
done
apt --fix-broken install