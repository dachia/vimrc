export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/dachia/google-cloud-sdk/path.bash.inc' ]; then . '/Users/dachia/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/dachia/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/dachia/google-cloud-sdk/completion.bash.inc'; fi

if [ -f /etc/profile ]; then
    PATH=""
    source /etc/profile
fi

export VISUAL=nvim
export EDITOR="$VISUAL"

alias v=nvim
alias gs='git status'
alias gac='git add . && git commit -m'
alias gaa='git add . && git commit --amend'
alias gcb='git checkout -b'
alias gc='git checkout'
alias gp='git push origin'
alias dcu='docker-compose up'
alias dce='docker-compose exec'
alias dcs='docker-compose stop'
