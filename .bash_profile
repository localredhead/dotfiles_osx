#loginPath

# Initialization for FDK command line tools.Tue Mar 12 13:56:14 2013
FDK_EXE="/Users/localredhead/bin/FDK/Tools/osx"
PATH=${PATH}:"/Users/localredhead/bin/FDK/Tools/osx"
export PATH
export FDK_EXE
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

export PATH="/usr/local/bin:$PATH" 
export VBOX_FFMPEG="/usr/local/Cellar/ffmpeg/1.1.3/bin"
export TERM=xterm-256color
export ALTERNATE_EDITOR="emacsclient -c" 
export EDITOR='emacsclient -t -a=\\\"\\\"'
#export VISUAL="emacsclient -c"
export CLICOLOR=1

#alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs -nw"
#alias emacsclient='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient'
#alias vi="emacsclient +8 %s -a emacs"
#alias vim='emacsclient -c'
#alias nano='emacs -nw'
alias tmux='TERMINFO=/usr/share/terminfo/x/xterm-16color TERM=xterm-16color tmux -2'
