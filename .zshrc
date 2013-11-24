# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/Users/kevin/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install

set -o vi

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/bin

# Using rbenv with Homebrew
eval "$(rbenv init -)"

# Powerline
source /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

# Aliases
source $HOME/.bash_aliases
