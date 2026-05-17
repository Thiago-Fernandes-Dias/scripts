# #!/bin/bash

# export ASFD_DOWNLOAD_URL="https://github.com/asdf-vm/asdf/releases/download/v0.18.0/asdf-v0.18.0-linux-amd64.tar.gz"
export GITHUB_USERNAME="Thiago-Fernandes-Dias"

# cd ~/Downloads

# wget -O asdf.tar.gz $ASFD_DOWNLOAD_URL

# tar -xvzf asdf.tar.gz

# mkdir -p ~/.local/bin

# mv asdf ~/.local/bin

# rm asdf.tar.gz


# ASDF_PLUGINS=(
# 	chezmoi python nodejs java maven
# )

# for i in "${ASDF_PLUGINS[@]}"
# do
#     echo "Installing asdf plugin $i -------------------------"
#     asdf plugin add "$i"
#     echo "asdf plugin $i installation finished --------------"
# done

# asdf install java openjdk-21
# asdf set --home java openjdk-21

# asdf install python 3.12.7
# asdf set --home python 3.12.7

# asdf install nodejs latest
# asdf set --home nodejs latest

# asdf install chezmoi latest
# asdf set --home chezmoi latest

# asdf install maven latest
# asdf set --home maven latest

export PATH=$PATH:$HOME/.local/bin
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

chezmoi init --apply git@github.com:$GITHUB_USERNAME/dotfiles.git