#!/bin/bash

# É necessário que o ASDF esteja instalado antes de executar
# Visite <https://asdf-vm.com/guide/getting-started.html>

ASDF_PLUGINS=(
	chezmoi python nodejs java
)

asdf plugin add chezmoi
asdf plugin add python
asdf plugin add java
for i in "${ASDF_PLUGINS[@]}"
do
    echo "Installing asdf plugin $i -------------------------"
    asdf plugin add "$i"
    echo "asdf plugin $i installation finished --------------"
done

asdf install java openjdk-21
asdf set -u java openjdk-21

asdf install python 3.12.7
asdf set -u python 3.12.7

asdf install nodejs latest
asdf set -u nodejs latest

asdf install chezmoi latest
asdf set -u chezmoi latest

export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
