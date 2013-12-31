eval "$(rbenv init -)"
# Initialization for FDK command line tools.Tue Mar 12 13:56:14 2013
FDK_EXE="/Users/localredhead/bin/FDK/Tools/osx"
PATH=${PATH}:"/Users/localredhead/bin/FDK/Tools/osx"
export PATH
export FDK_EXE

export PATH="/usr/local/bin:$PATH" 
export VBOX_FFMPEG="/usr/local/Cellar/ffmpeg/1.1.3/bin"
export TERM=xterm-256color
export ALTERNATE_EDITOR="" EDITOR=emacsclient VISUAL=emacsclient
export CLICOLOR=1

alias emacs='emacsclient -t'
#alias tmux='TERMINFO=/usr/share/terminfo/x/xterm-16color TERM=xterm-16color tmux -2'
