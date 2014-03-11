
# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/texbin:$HOME/node_modules/.bin:$HOME/bin

PATH=$PATH:$(brew --prefix ruby)/bin

# FIXME This needs to be conditional!
#set -o vi
source $HOME/.bash_aliases

PATH=$PATH:/usr/local/share/python

[[ -f $HOME/powerline/powerline/bindings/bash/powerline.sh ]] && source $HOME/powerline/powerline/bindings/bash/powerline.sh

export PIP2EVAL_TMP_FILE_PATH=/tmp/shms

# Drush
export PATH=$PATH:/Applications/acquia-drupal/drush

# added by travis gem
[ -f /Users/kgustavson/.travis/travis.sh ] && source /Users/kgustavson/.travis/travis.sh
