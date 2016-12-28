PREFIX=$(brew --prefix)
sudo chown -R $USER $PREFIX
sudo chmod a+w $PREFIX/Cellar
sudo mkdir -p $PREFIX/{share/man,bin,lib/node,include/node}
sudo chown -R $USER $PREFIX/{share/man,bin,lib/node,include/node}
sudo chown -R $USER ~/Library

source ~/.bash_profile

if [ "$(command -v rbenv)" ]; then
    read -p "git config user email:__ " EMAIL
    read -p "git config user name:__ " NAME
    git config --global user.email "$EMAIL"
    git config --global user.name "$NAME"
    export CC=/usr/bin/gcc
    read -p "rbenv found.  Which ruby to install? 2.2.1 ?_ " RESP
    echo "...installing ruby $RESP"
    rbenv install $RESP
    rbenv global $RESP
    source ~/.bash_profile
    gem install rubygems-update
    update_rubygems
    gem update --system
    gem install bundler
    gem install rsense
    gem install awesome_print
    Echo "................................."
fi

if [ "$(command -v postgres)" ]; then
   echo "................................."
   echo "Postgres ==> Caveats"
   brew info postgres
   echo "Please enter root password"
   sudo chmod 600 ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
   sudo chown $USER ~/Library/LaunchDaemons/homebrew.mxcl.postgresql.plist
   sudo launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
   #default postgres user
   createuser -P -s -e postgres
   echo "Done with Postgres"
   echo "................................."
fi

echo "run brew info postgres if there are errors."
echo "................................."

brew info redis
#brew info memcached

if [ "$(command -v npm)" ]; then
    echo "..npm binary found"
    npm config set proxy http://proxy.company.com:8080
    npm config set https-proxy http://proxy.company.com:8080
    echo "...installing node dependencies: tern jsxhint jshint"
    npm install -g tern jsxhint jshint bower
    echo "think about installing ember-cli -g ?"
    echo "................................."
fi

echo "install Gerrit"
sudo easy_install pip
sudo pip install --upgrade setuptools
sudo pip install git-review

echo "setup hosts file to utilize flexpaper"
echo "please enter password for sudo"
sudo echo "127.0.0.1       adm.dev.prv" >> /etc/hosts

createuser -P -s -e smp_dev
createuser -P -s -e smp_test

echo "Running this: `ruby /usr/local/Cellar/rsense/0.3/libexec/etc/config.rb >> .rsense`"
ruby -e  /usr/local/Cellar/rsense/0.3/libexec/etc/config.rb >> .rsense

export RBENV_ROOT=/usr/local/var/rbenv >> ~/.bash_profile

brew services restart redis
#brew services restart memcached
brew services restart postgresql

echo "TODO:"
echo "- update development.rb's,"
echo "-- database.yml's,"
echo "-- settings.yml's"
echo "-- ssh keys? (github)"
echo "- Reboot"
