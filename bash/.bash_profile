if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

#RBENV
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export RBENV_ROOT=/usr/local/var/rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export TERM=xterm-256color
export ALTERNATE_EDITOR=""
export EDITOR="emacsclient -t"
export VISUAL="emacsclient -c -a "
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

# get around auth proxy
#export NODE_TLS_REJECT_UNAUTHORIZED=0
#export HTTPS_PROXY=http://us01bcsg02.org.nasdaqomx.com:8080

export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
