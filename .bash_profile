if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

#RBENV
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export RBENV_ROOT=/usr/local/var/rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export TERM=xterm-256color
export ALTERNATE_EDITOR="" EDITOR=emacsclient VISUAL=emacsclient
export CLICOLOR=1
export ENHANCED_RAILS_CONSOLE=false
alias emacs='emacsclient -t'

# Stripe Credentials
export STRIPE_SECRET_KEY=needs-a-key
export STRIPE_PUBLISHABLE_KEY=needs-a-token

# Other settings
export MAILER_HOST=archer.dev
export NEWRELIC_DISPATCHER=pow
export MAILER_USE_MAILCATCHER=true

# slack
export SLACK_TOKEN=
export PATH="$(brew --prefix)/bin:$PATH"

#NPM prefix
export PREFIX="$(npm config get prefix)"


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PATH="~/.node/bin:$PATH"
export PATH
#export PATH="$HOME/.ndenv/bin:$PATH"
#eval "$(ndenv init -)"
export FORWARD_SQL_PORTS=1
