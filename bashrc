export PATH=/Users/rusheb/bin/:$PATH
export PATH=/usr/local/bin/:$PATH # need this to source the correct version of python

# Enable bash completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
source /usr/local/Cellar/git/2.21.0/etc/bash_completion.d/git-prompt.sh
export PS1='\[\033[0;33m\]\u@mbp \[\033[0;35m\]\w\[\033[0;36m\]$(__git_ps1) \[\033[0m\]\$ '

# Start TMUX when terminal is opened
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
    exec tmux
fi

# Add timestamp to bash history
export HISTTIMEFORMAT="%d/%m/%y %T "
export EDITOR=vim

# Google cloud SDK
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/rusheb/google-cloud-sdk/path.bash.inc' ]; then . '/Users/rusheb/google-cloud-sdk/path.bash.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/rusheb/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/rusheb/google-cloud-sdk/completion.bash.inc'; fi

# For code reviews
export REVIEW_BASE=master

# Aliases
alias pytree="tree -P '*.py' --prune"
alias python='python3'

# Aliases for work
export FB_CREDS=/Users/rusheb/code/fb-post-booster/facebook.json

# Is this for Haskell?
source /Users/rusheb/.ghcup/env

