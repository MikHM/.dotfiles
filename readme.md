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

### Install RVM

`$ brew install gpg2`  
`$ command curl -sSL https://rvm.io/mpapis.asc | gpg --import -`  
`$ command curl -sSL https://rvm.io/pkuczynski.asc | gpg --import -`  
`$ \curl -sSL https://get.rvm.io | bash -s stable`  
`$ source ~/.rvm/scripts/rvm`  
