## POWERLEVEL10K ##
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

plugins=(gradle-completion) 

## Load completion ##
autoload -Uz compinit && compinit

## ANTIBODY ##
# Alias for installing new plugins
alias abinstall='antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh && source ~/.zshrc'
# Load plugins
source ~/.zsh_plugins.sh

## FZF ##
export FZF_COMPLETION_TRIGGER='\'
export FZF_DEFAULT_OPTIONS="--preview"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

## ALIASES ##
alias gw=./gradlew
alias g=git
alias k=kubectl
alias craft='cd ~/work/craft'
alias ls=exa
alias cat=bat
alias less=bat
alias c=clear
alias start-craft='az vm start --resource-group craft-rs --name craft-rs'
alias start-sgx='az vm start --resource-group rusheb-sgx --name accvm'
alias watch='watch '
alias cgradle=container-gradle


## FZF ##
_fzf_complete_git() {
    ARGS="$@"
    local branches
    branches=$(git branch -vv --all)
    if [[ $ARGS == 'git co'* ]] || [[ $ARGS == 'git branch'* ]] ; then
        _fzf_complete --reverse --multi -- "$@" < <(
            echo $branches
        )
    else
        eval "zle ${fzf_default_completion:-expand-or-complete}"
    fi
}

_fzf_complete_git_post() {
    awk '{print $1}'
}

export PATH="$HOME/.bin:$PATH"

#source /usr/local/share/chruby/chruby.sh
#chruby ruby-2.7.2
