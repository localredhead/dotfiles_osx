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
- **Emacs**              
- **Postgres**            
- **rsense**              - ruby code completion ;)
- **ctags**               - I have them actually working.
- **Node.js**             - enables tern.js (js linter)
- **The silver searcher** - faster than grep
- **Chrome and Firefox**  - ¯\_(ツ)_/¯ 
- **rbenv**               - RVM replacement

- It attempts to install gerrit.  WIP.

### Installation

1. ```chmod +x post-checkout.sh```
1. ```chmod +x install-everything.sh```
1. ```./post-checkout.sh```

That should prompt as necessary and install all the things.  If it fails, fix the error and run the following by hand.  Post-checkout should run it without intervention if all goes well.
1. ```./install_everything.sh```


### After install steps
1. At the very least, Rsense needs setup.  After symlinking ```.rsense``` to ```~/``` run the following:
```ruby /usr/local/Cellar/rsense/0.3/libexec/etc/config.rb >> .rsense```
** verify your rsense version number.
