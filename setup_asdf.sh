# #!/bin/bash

export GITHUB_USERNAME="Thiago-Fernandes-Dias"

ASDF_PLUGINS=(
	chezmoi python nodejs java maven dotnet bun
)

for i in "${ASDF_PLUGINS[@]}"
do
    echo "Installing asdf plugin $i -------------------------"
    asdf plugin add "$i"
    echo "asdf plugin $i installation finished --------------"
done

asdf install java openjdk-21
asdf set --home java openjdk-21

asdf install python 3.12.7
asdf set --home python 3.12.7

asdf install nodejs latest
asdf set --home nodejs latest

asdf install chezmoi latest
asdf set --home chezmoi latest

asdf install maven latest
asdf set --home maven latest

asdf install dotnet latest
asdf set --home dotnet latest

asdf install bun latest
asdf set --home bun latest

export PATH=$PATH:$HOME/.local/bin
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

chezmoi init --apply git@github.com:$GITHUB_USERNAME/dotfiles.git