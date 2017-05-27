#!/usr/bin/env bash

# echo "................................."
# echo "Hooking up your dev environment master!"
# echo ".Installing Brew dependencies"

xcode-select --install

# this is for ctags build.
export CFLAGS=-O0

dotfiles_home=$(pwd)
working_dir=$(pwd)

echo "STARTING in dotfiles home directory: "
echo "$working_dir"

function set_working_dir {
    echo "Working directory was: "
    echo "$working_dir"
    working_dir=$(pwd)
    echo "Working directory CHANGED to: "
    echo "$working_dir"
}

function get_brew {
    cd .bundle
    set_working_dir
    brew tap Homebrew/bundle
    brew bundle exec -- brew bundle install
    brew unlink emacs
    brew link --overwrite emacs
    brew services restart emacs
    brew link --overwrite ctags
    brew linkapps
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

echo "backing up dot_files: .bashrc, .bash_profile, .guardrc, .irbrc, .profile, .rsense, .tmux.conf"
cd ~/
set_working_dir
mkdir .dotfiles_bak
mv -f .bashrc .dotfiles_bak/
mv -f .bash_profile .dotfiles_bak/
mv -f .guardrc .dotfiles_bak/
mv -f .rsense .dotfiles_bak/
mv -f .tmux.conf .dotfiles_bak/
mv -f .irbrc .dotfiles_bak/
mv -f .profile .dotfiles_bak/
mv -f .npmrc .dotfiles_bak/
mv -f .bowerrc .dotfiles_bak/
mv -f .bundle .dotfiles_bak/

echo "Use GNU STOW to symlink scripts in the root of $dotfiles_home"
echo "................................."

cd "$dotfiles_home"
set_working_dir
stow -t ~ bundle
stow -t ~ bash
stow -t ~ ruby
stow -t ~ git
stow -t ~ tmux
stow -t ~ emacs
stow -t ~ node

echo 'export PATH="/usr/local/opt/openssl/bin:$PATH"' >> ~/.bash_profile
echo "................................."

echo "................................."
echo ".... and run install_everything.sh (requires sudo)"
./all-the-things.sh

#stoken import --file=/Users/me/Documents/tss/me.sdtid --force
