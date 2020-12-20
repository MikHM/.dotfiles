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

