# Dotfiles

### Install homebrew

### Update bash to latest version (MACOS)
`$ brew install bash`  
append it to shell list: `$ sudo vim /etc/shells` and add `/usr/local/bin/bash`  
Set bash a default shell `$ sudo chsh -s /usr/local/bin/bash`  

### Clone the dotfiles bare repo  
`$ git clone --bare https://github.com/MikHM/.dotfiles $HOME/.dotfiles`

### Define the alias in the current shell scope
`$ alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'`  
`$ config checkout`  
`$ config config --local status.showUntrackedFiles no`

### Bash completion
`$ brew install bash-completion`  

### Nerd fonts

`$ brew tap homebrew/cask-fonts`  
`$ brew cask install font-hack-nerd-font`  
For MACOS, change font for text in iTerm's preferences.

### Needed for search in Vim
`$ brew install ripgrep`  
`$ brew install fzf`, and run `$(brew --prefix)/opt/fzf/install` to setup key bindings and more.

### Git completion for bash
`$ curl -O https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash`  

### ZSH
##### Syntax highlighting
`$ brew install zsh-syntax-highlighting`  
`$ git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`

## Linux

### Switch shell to zsh
`$ sudo apt install zsh`  
`$ chsh -s $(which zsh)`

### Neovim
`$ sudo apt-get install neovim`  

### Zsh plugins
`$ sudo apt install zsh-syntax-highlighting`  
- Download zsh-autosuggestions by  
`$ git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions`  
- Download zsh-syntax-highlighting by  
`$ git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting`  
