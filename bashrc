export PATH=/Users/rusheb/bin/:$PATH
export PATH=/usr/local/bin/:$PATH # need this to source the correct version of python

# enable bashc completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

source /usr/local/Cellar/git/2.21.0/etc/bash_completion.d/git-prompt.sh
export PS1='\[\033[0;33m\]\u@mbp \[\033[0;35m\]\w\[\033[0;36m\]$(__git_ps1) \[\033[0m\]\$ '

# auto start tmux
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
    exec tmux
    fi
