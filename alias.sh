DOT_DIR=`pwd`

link () {
	ln -fs $DOT_DIR/$1 ~/.$1
}

link gitconfig
link gitignore
link p10k.zsh
link vim
link vimrc
link zsh_plugins.txt
link zshrc
