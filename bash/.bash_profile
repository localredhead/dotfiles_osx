if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

#RBENV
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export RBENV_ROOT=/usr/local/var/rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="/usr/local/bin:$PATH"

#TERM
export TERM=xterm-256color
export ALTERNATE_EDITOR=""

#EMACS
export EDITOR="emacsclient -t"
export VISUAL="emacsclient -c -a "
export CLICOLOR=1
export ENHANCED_RAILS_CONSOLE=false
alias emacs='emacsclient -t'

#BREW
export PATH="$(brew --prefix)/bin:$PATH"

#NPM prefix
export PREFIX="$(npm config get prefix)"

#NODE
export PATH="~/.node/bin:$PATH"

# get around auth proxy (node dependency issue for secured networks)
#export NODE_TLS_REJECT_UNAUTHORIZED=0
#export HTTPS_PROXY=????:8080

#ANDROID
export ANDROID_SDK_ROOT=/usr/local/share/android-sdk
export ANDROID_NDK_HOME=/usr/local/share/android-ndk
export ANT_HOME=/usr/local/opt/ant
export MAVEN_HOME=/usr/local/opt/maven
export GRADLE_HOME=/usr/local/opt/gradle
export ANDROID_HOME=/usr/local/share/android-sdk
export ANDROID_NDK_HOME=/usr/local/share/android-ndk
export PATH=$ANT_HOME/bin:$PATH
export PATH=$MAVEN_HOME/bin:$PATH
export PATH=$GRADLE_HOME/bin:$PATH
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH
#export PATH=$ANDROID_HOME/build-tools/19.1.0:$PATH

#MISC
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PATH
