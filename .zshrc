if uname -a | egrep -q "Ubuntu"; then
	# echo "Configuring for Ubuntu"
	export EDITOR='vim'
	ZSH_THEME="gc"
elif uname -a | egrep -q "Darwin"; then
  # echo "Configuring for OSX"
	source ~/.dotfiles/afn_osx
	export EDITOR='subl'
	ZSH_THEME="gc"
else
  # echo "Configuring for generic"
  export EDITOR='vim'
  ZSH_THEME="gc_rhel"
fi

if [[ -d "/etc/redhat-release" && ! -L "/etc/redhat-release" ]]; then
	echo RHEL!!!
fi

ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# oh-my-zsh
plugins=(git rails ruby)
DISABLE_CORRECTION="true"
unsetopt CORRECT_ALL

source ~/.dotfiles/afn_sh
source ~/.dotfiles/afn_git
source ~/.dotfiles/afn_rails
source ~/.dotfiles/afn_misc

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin"

# add conditional path to vagrant instances
if [[ -d "/opt/vagrant_ruby/bin" && ! -L "/opt/vagrant_ruby/bin" ]]; then
	export PATH="$PATH:/opt/vagrant_ruby/bin"
fi

# chruby
source /usr/local/share/chruby/chruby.sh
# set via...
# echo "ruby-1.9" > ~/.ruby-version
source /usr/local/share/chruby/auto.sh

#clear

