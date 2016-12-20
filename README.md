## My personal dotfiles. With opinions.

After pulling there are two scripts to run ```post-checkout.sh```, ```install-everything.sh``` and there are symlinks to configure.  I symlink all the dot files into ```~/``` to keep it simple.

There are advantages to this setup if external deps are installed with homebrew, or dot files are updated during the discourse of day to day work.  The dotfiles are symlinked to a git repository so updates can be pushed continously.  Homebrew Bundler can be used to keep brew dependencies whitelisted.

The _post-checkout_ script sets up a few dependencies:

1. It installs Homebrew
1. It installs Homebew Bundler
1. It installs Exuberent Ctags because they require special compilation flags before brew install is run.
1. It installs xcode cli tools.

After these dependencies have been met it uses Brewdle to install everything listed in .bin/Brewdle.
A few key mentions:
- **Emacs**               > vim
- **Postgres**            - both Postgres.app and postgres server.
- **rsense**              - ruby code completion ;)
- **ctags**               - I have them actually working. IN EMACS. double ;)
- **Node.js**             - enables tern.js (js linter)
- **The silver searcher** - faster
- **Chrome and Firefox**  - ¯\_(ツ)_/¯ 
- **rbenv**               - RVM what? who?

### Installation

1. ```chmod +x post-checkout.sh && ./post-checkout.sh```
1. Symlink all things needed into ~/  (i.e. .bash_profile, .bash_rc, .bin, etc.)

After the symlinks have been set, execute ```install-everything.sh```.  The purpose of this file is to configure RBENV, POW, NVM, TMuxinator, and NPM installs a few development environment dependencies, ```tern```, ```jsxhint```, ```jshint```.

1. ```chmod +x install-everything.sh```
1. ```./install_everything.sh```


### After install steps
1. At the very least, Rsense needs setup.  After symlinking ```.rsense``` to ```~/``` run the following:
```ruby /usr/local/Cellar/rsense/0.3/libexec/etc/config.rb >> .rsense```
