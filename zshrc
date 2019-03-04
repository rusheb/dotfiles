# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export PATH=/Users/rusheb/bin:$PATH
export PATH="$(brew --prefix)/sbin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="$PATH:/usr/local/lib/ruby/gems/2.5.0/bin/"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="$PATH:/usr/local/lib/ruby/gems/2.6.0/bin/"


ZSH_THEME="custom"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

plugins=(
  git
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

## xdebug stuff
export EDITOR='vim'
# enable the debugger
export XDEBUG_CONFIG="idekey=xdebug"
# export PATH="/usr/local/opt/node@10/bin:$PATH"
export PATH="/usr/local/opt/php@7.1/bin:$PATH"
export PATH="/usr/local/opt/php@7.1/sbin:$PATH"

# for settings enforcer
export SETTINGS_ENFORCER_CONFIG="/Users/rusheb/code/settings-enforcer/config.json"
export SETTINGS_ENFORCER_TEST_CREDS="/Users/rusheb/creds/google.json"

# for adwordy
export SECRETS_PATH="/Users/rusheb/creds/google.json"


## shortcuts
alias gitk='gitk --all &'
