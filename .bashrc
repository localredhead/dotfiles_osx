export TERM=xterm-256color
export CLICOLOR=1

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

#if [[ ! $TERM =~ screen ]]; then
#   exec tmux
#fi
