ZSH=$HOME/.oh-my-zsh
ZSH_THEME="gc"
plugins=(git rails ruby)

source $ZSH/oh-my-zsh.sh

alias cd..="cd .."
alias l="ls -lrt"
alias edit="subl"
alias v="vagrant"
alias be="bundle exec"
alias bi="bundle install"

alias g="git"
alias gs='git status --short'
alias ga='git add -A'
alias gpush="git push origin master"
alias gpull="git pull origin master"
alias gc="git commit -am"

function grm { git rm $(git ls-files -d); }
#function gc() { git commit -am "$@" }
function gcp() { git commit -am "$@"; push; }

alias hfshow="defaults write com.apple.Finder AppleShowAllFiles TRUE && killall Finder"
alias hfhide="defaults write com.apple.Finder AppleShowAllFiles FALSE && killall Finder"
alias showfinder="sudo killall -KILL appleeventsd"
alias del_dsstore="find . -name '*.DS_Store' -type f -delete"

function lt() { ls -ltrsa "$@" | tail; }
function psgrep() { ps -clx | grep -v grep | grep "$@" -i --color=auto; }
function fname() { find . -iname "*$@*"; }

export NODE_PATH="/usr/local/lib/node"

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin"
export PATH="$PATH:/usr/local/share/npm/bin"
export PATH="$HOME/.rbenv/bin:$PATH"

# old rbenv override, removed to use global
# export RBENV_VERSION="1.9.3-p392"

eval "$(rbenv init -)"

unsetopt CORRECT_ALL