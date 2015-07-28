PREFIX=$(brew --prefix)
sudo chown -R $USER $PREFIX
sudo chmod a+w $PREFIX/Cellar
sudo mkdir -p $PREFIX/{share/man,bin}
sudo chown -R $USER $PREFIX/{share/man,bin}
sudo chown -R $USER ~/Library

source ~/.bash_profile

if [ "$(command -v rbenv)" ]; then
    export CC=/usr/bin/gcc
    read -p "rbenv found.  Which ruby to install? 2.2.1 ?_ " RESP
    echo "...installing ruby $RESP"
    rbenv install $RESP
    rbenv global $RESP
    source ~/.bash_profile
    echo "personal rails dependencies: terminator, rsense, tmuxinator"
    gem install terminator
    gem install tmuxinator
    gem install rsense
    echo "................................."
fi

if [ "$(command -v npm)" ]; then
    echo "..npm binary found"
    echo "...installing node dependencies: tern jsxhint jshint"
    npm install -g tern jsxhint jshint
    echo "................................."
fi

echo "TODO:"
echo "-- ssh keys? (github)"
echo "- copy config folder to ~/.ssh"
echo "- symlink .rsense and update its contents"
echo "- run git config --global url.ssh://git@github.com/.insteadOf https://github.com/"
echo "- Reboot"
