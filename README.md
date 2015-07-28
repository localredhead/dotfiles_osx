
## My personal dotfiles, with a twist.


After checking this out there are 2 scripts to run, ```post-checkout.sh``` and ```install-everything.sh```

Once ```post-checkout.sh``` is executed these should be checked into a projects folder and then symlinkd into your home folder.

The post-checkout script sets up a few dependencies:

1. It installs Homebrew
1. It installs Brewdle

After these dependencies have been met it uses Brewdle to install everything listed in .bin/Brewdle.
A few key mentions:
- **Emacs**               - my code editor
- **TMUX**                - gotta have it
- **Iterm2**              - best terminal
- **rbenv**               - ruby version manager
- **tmuxinator**          - tmux project setup
- **rsense**              - ruby code completion
- **ctags**               - for emacs
- **The silver searcher** - faster than grep or ack by magnitudes.
- **Chrome and Firefox**  - browsers
- **Evernote**            - will eventually change to org-mode
- **BetterTouchTool**     - window snap tool
- **Shiftit**             - window snap tool
- **RecordIt**            - best way to report issues.  Animated Gif screencasts

1. ```chmod +x post-checkout.sh && ./post-checkout.sh```
1. Symlink all things needed into ~/  (i.e. .bash_profile, .bash_rc, .bin, etc.)

After the symlinks have been set, execute ```install-everything.sh```.  The purpose of this file is to configure RBENV, POW, NVM, TMuxinator, and NPM installs a few development environment dependencies, ```tern```, ```jsxhint```, ```jshint```.

1. ```chmod +x install-everything.sh```
1. ```./install_everything.sh```


#After install steps
1. At the very least, Rsense needs setup.  After symlinking ```.rsense``` to ```~/``` run the following:
```ruby /usr/local/Cellar/rsense/0.3/libexec/etc/config.rb >> .rsense```
