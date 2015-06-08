#!/usr/bin/env bash



# echo "................................."
# echo "Hooking up your dev environment master!"
# echo ".Installing Brew dependencies"


xcode-select --install


# this is for ctags build.
export CFLAGS=-O0



function get_brew {
    brew tap Homebrew/bundle
    cd .bin
    brew bundle
    brew linkapps
    brew link ctags
    brew cleanup
    brew prune
    brew cask cleanup
}



if [ -x "$(command -v brew)" ]; then
    echo "..brew binary found - here we go!"
    echo "................................."
    get_brew
else
    echo "..brew binary is missing.  Installing homebrew first!"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    echo "...now we can proceed with brew dependencies."
    echo "................................."
    get_brew
fi


echo "SYMLINK all the bash scripts and run install_everything.sh"
