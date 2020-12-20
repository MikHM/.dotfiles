# Getting repos branch name
git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# Customize terminal prompt
export PS1="\[\033[01;34m\][\w]\[\033[00m\]\[\033[00;32m\]\$(git_branch)\[\033[00m\]\\n> "

# auto-completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# ----------------------------------------------------------------------- #
# ALIASES
# ----------------------------------------------------------------------- #
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
source ~/.aliases

# ----------------------------------------------------------------------- #
# EXPORTS
# ----------------------------------------------------------------------- #
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"

export PATH="/usr/local/opt/openssl/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"

export PATH="/usr/local/opt/openssl@1.0/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl@1.0/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.0/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.0/lib/pkgconfig"
#export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.0)"

export LDFLAGS="-L/usr/local/opt/v8@3.15/lib"
export CPPFLAGS="-I/usr/local/opt/v8@3.15/include"
export PATH="/usr/local/opt/v8@3.15/bin:$PATH"

export BASH_SILENCE_DEPRECATION_WARNING=1

export PATH="/opt/.rbenv/bin:$PATH"

# ----------------------------------------------------------------------- #
# Env Variables
# ----------------------------------------------------------------------- #
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  export MYSQL_PASSWORD='password'
  export MYSQL_SOCKET="/var/run/mysqld/mysqld.sock"
else
  # MYSQL for OSX
  export MYSQL_PASSWORD=''
  export HAPPYDEMICS2_MYSQL_SOCKET="/tmp/mysql.sock"
  export MYSQL_SOCKET="/tmp/mysql.sock"
fi

eval "$(rbenv init -)"
