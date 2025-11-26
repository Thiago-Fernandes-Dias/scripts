git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.1
. "$HOME/.asdf/asdf.sh"
ASDF_PLUGINS=(
	chezmoi python nodejs java
)

asdf plugin add chezmoi
asdf plugin add python
asdf plugin add java
for i in "${ASDF_PLUGINS[@]}"
do
    echo "Installing asdf plugin $i -------------------------"
   adsf plugin add "$i"
   echo "asdf plugin $i installation finished --------------"
done

asdf install java openjdk-21
asdf global java openjdk-21

asdf install python 3.12.7
asdf global python 3.12.7

asdf install nodejs latest
asdf global nodejs latest

asdf install chezmoi latest
asdf global chezmoi latest

export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"