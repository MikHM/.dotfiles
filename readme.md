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

