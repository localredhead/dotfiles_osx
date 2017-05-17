#### Whats inside?
Homebrew bundler is used to install *nearly* everything and should be used to acquire all binaries.  Keeping your list of dependencies tidy is easily managed using bundler, specifically for anything installed with Homebrew.

*See .bundle/Brewfile for a complete list of what will be installed*

After these scripts complete your OSX will be:
- Ready for rails development (rbenv)
- Ready for node development (n)
- Bootrapped with general tools like ack, ag, ctags, chrome, firefox, postgres, emacs :)

The _post-checkout_ script is used to bootstrap dependencies for the _all-the-things_ script.

1. It installs Homebrew.
1. It installs Homebrew Bundler https://github.com/Homebrew/homebrew-bundle.
1. It installs Exuberent Ctags because it requires compilation flags before `brew install`
1. It installs xcode cli tools.
1. It symlinks dotfiles to `~/`.

### How do I get it?
There are two scripts to run: ```post-checkout.sh``` and ```all-the-things.sh```.

1. ```git clone git@github.com:localredhead/dotfiles_osx.git```
1. ```cd dotfiles_osx```
1. ```chmod +x post-checkout.sh```
1. ```chmod +x all-the-things.sh```
1. ```./post-checkout.sh```
1. Follow prompts as necessary.
1. If it fails, fix the error and run ```./all_the_things.sh``` after Post-checkout completes.  Post-checkout should run it without intervention if all goes well.

### After install steps
1. At the very least, Rsense needs setup.  After symlinking ```.rsense``` to ```~/``` run the following:
```ruby /usr/local/Cellar/rsense/0.3/libexec/etc/config.rb >> .rsense```
** verify your rsense version number.

### Stay up to date!
You will likely install more things with brew and want to include them in your brew bundle.  It's simple, after `brew install`:
1. ```cd ~/.bundle/```
1. ```brew bundle dump --force```
- If you want to uninstall packages that are not listed in the bundle: `brew bundle cleanup --force`
- If you want to check for updates: `brew bundle check`
