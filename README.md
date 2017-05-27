## Setup and dotfile confuration for rails and node development

### Whats inside?
A very minimalistic development environment setup that makes full use of Homebrew, Homebrew bundler, and some light bash scripting.
1. Gnu Stow is used to symlink dotfiles in the `~/` directory.
1. Homebrew bundler is used to install *nearly* everything.
To make the most of this, Homebrew should be used to acquire dependencies.  Keeping your list of dependencies tidy is easily managed using bundler.

After these scripts finish executing you will be ready for
- rails development via (rbenv)
- node development via (n)

In addition there are several tools that are installed to make software development easier
- general tools: java, ack, ag, ctags, pandoc, gnupg, imagemagick, go
- browsers: chrome, firefox
- services: postgres, redis, memcached, openssl
- editor: emacs w/ spacemacs
- *See .bundle/Brewfile for a complete list of what will be installed*

The _post-checkout_ script is used to bootstrap dependencies for the _all-the-things_ script.
1. It installs Homebrew.
1. It installs Homebrew Bundler https://github.com/Homebrew/homebrew-bundle.
1. It installs Exuberent Ctags because it requires compilation flags before `brew install`
1. It installs xcode cli tools.
1. It symlinks dotfiles to `~/`.

#### How do I get it?
There are two scripts to run: ```post-checkout.sh``` and ```all-the-things.sh```.

1. ```git clone git@github.com:localredhead/dotfiles_osx.git```
1. ```cd dotfiles_osx```
1. ```chmod +x post-checkout.sh```
1. ```chmod +x all-the-things.sh```
1. ```./post-checkout.sh```
1. Follow prompts as necessary.
1. If it fails, fix the error and run ```./all_the_things.sh``` after Post-checkout completes.  Post-checkout should run it without intervention if all goes well.

#### After install steps
1. At the very least, Rsense needs setup.  After symlinking ```.rsense``` to ```~/``` run the following:
```ruby /usr/local/Cellar/rsense/0.3/libexec/etc/config.rb >> .rsense```
** verify your rsense version number.

#### Stay up to date!
You will likely install more things with brew and want to include them in your brew bundle.  It's simple, after `brew install`:
1. ```cd ~/.bundle/```
1. ```brew bundle dump --force```
- If you want to uninstall packages that are not listed in the bundle: `brew bundle cleanup --force`
- If you want to check for updates: `brew bundle check`
