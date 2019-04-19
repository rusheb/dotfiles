## README
This script is a work in progress!
Read through it carefully before running and make any neessary modifications

## TODO
# copy ssh config

## Set up some basic directories
mkdir ~/code
mkdir ~/bin

## Generate SSH keys
ssh-keygen -t rsa -C "rusheb@brainlabsdigital.com" -f "~/.ssh/id_rsa_work"
ssh-keygen -t rsa -C "rusheb.shah@gmail.com" -f "~/.ssh/id_rsa"
ssh-add ~/.ssh/id_rsa
ssh-add ~/.ssh/id_rsa_work
# TODO copy my SSH config
read -p "Copy public keys to their respective github accounts, then press [Enter] to continue"

cd ~/code
git clone git@personal:rushebshah/dotfiles.git

# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install tools and apps
brew install python3.7
brew install tree
brew cask install firefox
brew cask install iterm2
brew cask install itsycal
brew cask install spotify
brew cask install slack
brew cask install spectacle
brew cask install enpass
brew cask install tunnelbear
brew cask install tor-browser
brew cask install gpg-suite-no-mail
brew cask install dropbox
read -p "Please sign into dropbox, then press [Enter] to continue"

brew install mas # mac app store
mas install 1091189122 # bear
# TODO import notes from backup

# set up development environment
brew install tmux
ln -s ~/code/dotfiles/bashrc ~/.bashrc
ln -s ~/code/dotfiles/profile ~/.profile
ln -s ~/code/dotfiles/tmux.conf ~/.tmux.conf
rm ~/.gitconfig
ln -s ~/code/dotfiles/gitconfig ~/.gitconfig
ln -s ~/code/dotfiles/gitignore ~/.gitignore
git config --global core.excludesfile ~/.gitignore

# TODO bashrc
# TODO need to set the default shell in iterm and also the theme

# set up vim
alias python=python3
brew install vim
unalias python
ln -s ~/code/dotfiles/vim/ ~/.vim
ln -s ~/code/dotfiles/vim/.vimrc ~/.vimrc
vim +'PlugInstall --sync' +qa

## setup bear markdown sync (in progress)
# cd ~/code
# git clone git@personal:personal/Bear-Markdown-Export.git
# cd Bear-Markdown-Export/
# git remote add upstream git@markgrovs:rushebshah/Bear-Markdown-Export.git
# git config user.name "rushebshah"
# git config user.email "rusheb.shah@gmail.com"
## the below doesn't work - you need a scrpt that cds to the folder and runs it
# ln -s ~/code/Bear-Markdown-Export/bear_export_sync.py ~/bin/bear-export
# chmod +x ~/bin/bear-export 

