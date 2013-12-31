#export TERM=xterm-256color
#export CLICOLOR=1

#if [[ ! $TERM =~ screen ]]; then
#   exec tmux
#fi
eval "$(rbenv init -)"
