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

## VIM MODE ##
#bindkey -v
#export KEYTIMEOUT=20
#bindkey -M viins 'jk' vi-cmd-mode
#bindkey "^P" up-line-or-history
#bindkey "^N" down-line-or-history

## FZF ##
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_COMPLETION_TRIGGER='\'
export FZF_DEFAULT_OPTIONS="--preview"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

## ALIASES ##
alias gw=./gradlew
alias g=git
alias craft='cd ~/work/craft'
alias cat=bat
alias less=bat
alias ls=exa
alias c=clear

_fzf_complete_git() {
    ARGS="$@"
    local branches
    branches=$(git branch -vv --all)
    if [[ $ARGS == 'git co'* ]]; then
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

