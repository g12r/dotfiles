ZSH=$HOME/.oh-my-zsh
ZSH_THEME="gc"
plugins=(git rails ruby)

source $ZSH/oh-my-zsh.sh

alias cd..="cd .."

alias edit="subl"
alias g="git"
alias v="vagrant"
alias up="vagrant up --no-provision"
alias be="bundle exec"
alias bi="bundle install"

alias hfshow="defaults write com.apple.Finder AppleShowAllFiles TRUE && killall Finder"
alias hfhide="defaults write com.apple.Finder AppleShowAllFiles FALSE && killall Finder"

alias push="git push origin master"
alias pull="git pull origin master"
alias add="git add ."
alias c="git commit -m "

alias l="ls -lrt"

alias showfinder="sudo killall -KILL appleeventsd"

function lt() { ls -ltrsa "$@" | tail; }
#function l() { ls -lrt "$@" }
function psgrep() { ps -clx | grep -v grep | grep "$@" -i --color=auto; }
function fname() { find . -iname "*$@*"; }

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin"

export NODE_PATH="/usr/local/lib/node"
export PATH="$PATH:/usr/local/share/npm/bin"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

#export RBENV_VERSION=1.9.3-p327
unsetopt CORRECT_ALL
