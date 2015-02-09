unset VENDOR
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(git ruby)
plugins=(brew git compleat docker common-aliases)

source $ZSH/oh-my-zsh.sh

# User configuration

# Enable vi keybindings
bindkey -v

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/texbin"
# export MANPATH="/usr/local/man:$MANPATH"

# Add composer global bin to PATH
PATH=$HOME/.composer/vendor/bin:$PATH

# Add NPM bin to PATH
PATH=node_modules/.bin:$PATH

# Add composer bin to PATH
PATH=vendor/bin:$PATH

# If you have a bin folder in $HOME, add it to your path
[[ -d ${HOME}/bin ]] && PATH=${HOME}/bin:${PATH}

. /usr/local/etc/profile.d/z.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
  # export EDITOR='vim'
# else
  # export EDITOR='mvim'
# fi
export EDITOR=vim


# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

source $HOME/.aliases

#export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Enable direnv
eval "$(direnv hook $0)"

export ANDROID_HOME=/usr/local/opt/android-sdk


# Boot2Docker
export DOCKER_CERT_PATH=/Users/kevin/.boot2docker/certs/boot2docker-vm
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_TLS_VERIFY=1

# fleetctl
export FLEETCTL_ENDPOINT=http://172.17.8.101:4001
export ETCDCTL_PEERS=http://172.17.8.101:4001
[[ -d $HOME/coreos-osx/bin ]] && PATH=$PATH:$HOME/coreos-osx/bin
