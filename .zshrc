ZSH=$HOME/.oh-my-zsh
ZSH_THEME="gc"
plugins=(git rails ruby)

source $ZSH/oh-my-zsh.sh

source ~/.dotfiles/afn_sh
source ~/.dotfiles/afn_git
source ~/.dotfiles/afn_rails
source ~/.dotfiles/afn_osx
source ~/.dotfiles/afn_misc

#export NODE_PATH="/usr/local/lib/node"
#export PATH="$PATH:/usr/local/share/npm/bin"

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin"
export PATH="$HOME/.rbenv/bin:$PATH"

eval "$(rbenv init -)"
export RBENV_VERSION="2.0.0-rc2"

unsetopt CORRECT_ALL
clear

