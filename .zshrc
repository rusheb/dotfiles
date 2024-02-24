# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Python packages e.g. pipenv
export PATH=$PATH:/Users/rusheb/Library/Python/3.8/bin/

export PATH=/opt/homebrew/opt/openjdk/bin:$PATH
export PATH=/Users/rusheb/bin:$PATH
export PATH="/Users/rusheb/.local/bin:$PATH"

## Plugins
source ~/.zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# completion
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit; compinit -i

source ~/.zsh/plugins/fzf-tab/fzf-tab.plugin.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# export FZF_DEFAULT_OPTS="--bind=ctrl-l:toggle,ctrl-h:clear-query,enter:accept"
zstyle ':fzf-tab:*' fzf-bindings 'ctrl-i:toggle-down'

# previews for files and directories for ctrl-t
export FZF_CTRL_T_OPTS="--preview 'if [[ -d {} ]]; then
tree -C {} | head -200; else
bat --style=numbers --color=always --line-range :500 {};
fi'"

alias g=git


## Pipenv stuff ???
# eval "$( brew shellenv )"

# Pyenv
# # Set your preferred Python version.
# export PYENV_VERSION=3.10.6
# 
# export PIPX_BIN_DIR=~/.local/bin
# export PYENV_ROOT=~/.pyenv
# 
# # -U eliminates duplicates.
# export -U PATH path         
# path=( 
#     $PIPX_BIN_DIR
#     $PYENV_ROOT/{bin,shims} 
#     $path
# )
# 
# # Updates the global python, if necessary, and installs/upgrades pipenv.
# pybake() {
#   # Install pyenv, if necessary.
#   command -v pyenv > /dev/null || 
#       brew install pyenv
# 
#   # Install your preferred Python.
#   # Does nothing if $PYENV_VERSION hasn't changed.
#   pyenv install --skip-existing $PYENV_VERSION
# 
#   pyenv global $PYENV_VERSION  # Make it your default.
#   pip install -U pip           # Update pip.
# 
#   # Install pipx (into ~/.local/bin) or update it.
#   # pipx is like brew, but for Python.
#   pip install -U --user pipx   
# 
#   # Install or update pipenv.
#   pipx ${${$( command -v pipenv ):+upgrade}:-install} pipenv
# }
# 
# eval "$( pyenv init - )"
# eval "$( pip completion --zsh )"
# eval "$( register-python-argcomplete pipx )"
# 
alias python=python3

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/rusheb/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/rusheb/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/rusheb/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/rusheb/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# pyenv stuff -- is this working??
# export PYENV_ROOT="$HOME/.pyenv"
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"

export PYTHONPYCACHEPREFIX=/tmp/pycache

source ~/.zshenv
