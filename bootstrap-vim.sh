pip install --user --upgrade pip
pip install --user mypy

backup_and_link () {
  if test -e "$HOME/.$1"; then mv "$HOME/.$1" "$HOME/.$1.backup"; fi
  ln -fs "$HOME/dotfiles/$1" "$HOME/.$1"
}

backup_and_link "vim"
backup_and_link "vimrc"

# Install vim plugins
vim -E -s -u "~/.vimrc" +PlugInstall +qall
