PREFIX=$(brew --prefix)
sudo chown -R $USER $PREFIX
sudo chmod a+w $PREFIX/Cellar
sudo mkdir -p $PREFIX/{share/man,bin,lib/node,include/node}
sudo chown -R $USER $PREFIX/{share/man,bin,lib/node,include/node}
sudo chown -R $USER ~/Library

source ~/.bash_profile

if [ "$(command -v rbenv)" ]; then
    export CC=/usr/bin/gcc
    read -p "rbenv found.  Which ruby to install? 2.2.1 ?_ " RESP
    echo "...installing ruby $RESP"
    rbenv install $RESP
    rbenv global $RESP
    source ~/.bash_profile
    echo "and rails dependencies: terminator, zeus, powder"
    gem install terminator
    gem install zeus
    gem install powder
    gem install rsense
    echo "................................."    
fi



if [ "$(command -v nvm)" ]; then
    echo "................................."    
    echo "$(command -v nvm)"
    nvm install stable
    nvm alias default stable
else
    echo "NVM not installed"
    mkdir ~/.nvm/
fi



if [ "$(command -v pow)" ]; then
    echo "configuring POW and Postgres with suggestions from Homebrew"
    echo "POW ==> Caveats"
    echo "................................."
    #brew info pow
    mkdir -p ~/Library/Application\ Support/Pow/Hosts
    ln -s ~/Library/Application\ Support/Pow/Hosts ~/.pow
    sudo pow --install-system
    pow --install-local
    sudo chmod 600 ~/Library/LaunchAgents/*.plist
    sudo chown $USER ~/Library/LaunchDaemons/cx.pow.firewall.plist
    sudo chown $USER ~/Library/LaunchAgents/cx.pow.powd.plist
    sudo launchctl load -w /Library/LaunchDaemons/cx.pow.firewall.plist
    sudo launchctl load -w ~/Library/LaunchAgents/cx.pow.powd.plist
    echo "Done with POW"
fi



if [ "$(command -v postgres)" ]; then
   echo "................................."
   echo "Postgres ==> Caveats"
   #brew info postgres
   sudo chmod 600 ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
   sudo chown $USER ~/Library/LaunchDaemons/homebrew.mxcl.postgresql.plist
   sudo launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
   echo "Done with Postgres"
   echo "................................."
fi



echo "if these aren't working run brew info pow or brew info postgres"
echo "................................."



if [ "$(command -v npm)" ]; then
    echo "..npm binary found"
    echo "...installing node dependencies: tern jsxhint jshint"
    npm install -g tern jsxhint jshint
    echo "................................."
fi


echo "TODO:"
echo "- configure .powenv in projects"
echo "- update development.rb's,"
echo "-- database.yml's,"
echo "-- settings.yml's"
echo "-- ssh keys? (github)"
echo "-- Symlink all pow apps with powder"
echo "- symlink .rsense and update its contents"
echo "-- install http://anvilformac.com/"
echo "- Reboot"
