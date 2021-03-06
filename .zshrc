export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin"

if uname -a | egrep -q "Ubuntu"; then
	# echo "Configuring for Ubuntu"
	export EDITOR='vim'
	ZSH_THEME="gc"
elif uname -a | egrep -q "Darwin"; then
  # echo "Configuring for OSX"
	source ~/.dotfiles/afn_osx
	export EDITOR='nvim'
	ZSH_THEME="gc"
else
  # echo "Configuring for generic"
  export EDITOR='vim'
  ZSH_THEME="gc"
fi

# is RHEL?
if ls /etc/redhat-release &> /dev/null; then
	ZSH_THEME="gc_rhel"
fi

ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# oh-my-zsh
plugins=(git rails ruby)
DISABLE_CORRECTION="true"
unsetopt CORRECT_ALL

source ~/.dotfiles/afn_sh
source ~/.dotfiles/afn_git
source ~/.dotfiles/afn_misc
source ~/.dotfiles/afn_java
source ~/.dotfiles/afn_js
source ~/.dotfiles/afn_py
source ~/.dotfiles/afn_toolbox

export PATH=$PATH:/usr/local/bin  # MIDWAY PATH: Path changed for ssh
export LDFLAGS="-L/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/llvm/include"
export PATH="/usr/local/opt/curl/bin:$PATH"
export PATH="~/.local/bin:$PATH"

export HOMEBREW_PREFIX="/usr/local"
eval $($HOMEBREW_PREFIX/bin/brew shellenv)

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export KAFKA_HOME=$HOME/Dropbox/Code/Kafka/runtime/kafka_2.13-2.8.0
export PATH=$PATH:$KAFKA_HOME/bin