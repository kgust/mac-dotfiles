# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=(history history-substring-search osx emoji-clock brew git git-extras git-hubflow git-remote-branch gitfast github ruby bundler gem coffee node npm rsync vagrant rvm tmux symfony2 themes vi-mode vundle web-search terminalapp)
plugins=(history history-substring-search osx emoji-clock brew git-extras gitfast ruby gem coffee node npm rsync vagrant rvm tmux symfony2 themes tmuxinator urltools vi-mode vundle web-search)
source $ZSH/oh-my-zsh.sh

# User configuration
#export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/texbin
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/texbin:$HOME/node_modules/.bin:$HOME/bin

PATH=$PATH:$(brew --prefix ruby)/bin

# FIXME This needs to be conditional!
set -o vi
source $HOME/.bash_aliases

PATH=$PATH:/usr/local/share/python

[[ -d $HOME/powerline/powerline/bindings/zsh/ ]] && source $HOME/powerline/powerline/bindings/zsh/powerline.zsh
[[ -d /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/ ]] && source /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

export PIP2EVAL_TMP_FILE_PATH=/tmp/shms
# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Drush
export PATH=$PATH:/Applications/acquia-drupal/drush
