# Path to your oh-my-zsh installation.
ZSH_DISABLE_COMPFIX="true"
export ZSH="/Users/mik/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="avit"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git bundler dotenv osx rake ruby rbenv zsh-syntax-highlighting)

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  export ZSH="/home/mik/.oh-my-zsh"
  source $ZSH/oh-my-zsh.sh

  alias config='/usr/bin/git --git-dir=/home/mik/.dotfiles/ --work-tree=/home/mik'
else
  # Path to your oh-my-zsh installation.
  export ZSH="/Users/mik/.oh-my-zsh"
  source $ZSH/oh-my-zsh.sh

  alias config='/usr/bin/git --git-dir=/Users/mik/.dotfiles/ --work-tree=/Users/mik'
fi

# bringing in the rest of the inaliases
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# ----------------------------------------------------------------------- #
# EXPORTS
# ----------------------------------------------------------------------- #
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

# For compilers to find openssl@1.1:
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"

export PATH="/usr/local/opt/v8@3.15/bin:$PATH"

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


source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
