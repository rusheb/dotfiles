BLACK="\[\033[0;30m\]"
RED="\[\033[0;31m\]"
GREEN="\[\033[0;32m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[0;34m\]"
PURPLE="\[\033[0;35m\]"
CYAN="\[\033[0;36m\]"
WHITE="\[\033[0;37m\]"

function personalise_prompt {
  local username="\u"
  local cur_location="\w"
  local git_branch=$(__git_ps1);

  PS1="$PURPLE$cur_location$CYAN$git_branch $WHITE> "
}
export PROMPT_COMMAND=personalise_prompt

# Enable bash completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
source /usr/local/Cellar/git/2.21.0/etc/bash_completion.d/git-prompt.sh

export PATH=/Users/rusheb/bin/:$PATH
export PATH=/usr/local/bin/:$PATH # need this to source the correct version of python

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

