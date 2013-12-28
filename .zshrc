ZSH=$HOME/.oh-my-zsh
ZSH_THEME="gc"
plugins=(git rails ruby)

source $ZSH/oh-my-zsh.sh

source ~/.dotfiles/afn_sh
alias gpush="git push origin master"
alias gpull="git pull origin master"
alias gc="git commit -am"
alias gcu="git commit -am 'Synching...'"

alias rs="rails s"
alias birs="bi & rs"

source ~/.dotfiles/afn_git
source ~/.dotfiles/afn_rails
source ~/.dotfiles/afn_osx
source ~/.dotfiles/afn_misc

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin"

#export PATH="$HOME/.rbenv/bin:$PATH"
#eval "$(rbenv init -)"
#export RBENV_VERSION="2.0.0-rc2"

unsetopt CORRECT_ALL
clear

