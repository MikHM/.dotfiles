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
source .aliases

# ----------------------------------------------------------------------- #
# EXPORTS
# ----------------------------------------------------------------------- #
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"

export LDFLAGS="-L/usr/local/opt/v8@3.15/lib"
export CPPFLAGS="-I/usr/local/opt/v8@3.15/include"
export PATH="/usr/local/opt/v8@3.15/bin:$PATH"

export BASH_SILENCE_DEPRECATION_WARNING=1

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
