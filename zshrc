# Ref-URL:https://github.com/michaeljsmalley/dotfiles

# Explicitly configured $PATH variable
#PATH=/usr/local/git/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/opt/local/bin:/opt/local/sbin:/usr/X11/bin
PATH=/usr/local/bin:$PATH:/usr/local/go/bin

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="dracula"
#ZSH_THEME="xiong-chiamiov-plus"
ZSH_THEME="agnoster" # (this is one of the fancy ones)
#ZSH_THEME="random"
#ZSH_THEME_RANDOM_CANDIDATES=(
#  "agnoster"
#  "xiong-chiamiov-plus"
#)

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=(git osx autojump)

#source $ZSH/oh-my-zsh.sh

# Put any proprietary or private functions/values in ~/.private, and this will source them
if [ -f $HOME/.private ]; then
    source $HOME/.private
fi

if [ -f $HOME/.profile ]; then
    source $HOME/.profile  # Read Mac .profile, if present.
fi

# Shell Aliases
## Git Aliases
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias gco='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'
alias got='git '
alias get='git '

## pip aliases
alias pipcache='pip install --download ${HOME}/.pip/tmp/'
alias pipinstall='pip install --no-index --find-links=file://${HOME}/.pip/tmp/'

## apt-get alias
alias ai="sudo apt install"
alias ar="sudo apt autoremove"
alias ad="sudo apt update"
alias ag="sudo apt upgrade"

# qfind - used to quickly find files that contain a string in a directory
qfind () {
    find . -exec grep -l -s $1 {} \;
    return 0
}

# Custom exports
## Set EDITOR to /usr/bin/vim if Vim is installed
if [ -f /usr/bin/vim ]; then
    export EDITOR=/usr/bin/vim
fi

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want disable red dots displayed while waiting for completion
# DISABLE_COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx autojump)

source $ZSH/oh-my-zsh.sh

### Added by the Heroku Toolbelt
export PATH="$PATH:/home/teddy/code/bin:$(go env GOPATH)/bin"
# for sogou
export GTK_IM_MODULE=fcitx      
export QT_IM_MODULE=fcitx      
export XMODIFIERS="@im=fcitx" 

# Python Path将自己的库放在该目录下，便于导入
export PYTHONPATH=$PYTHONPATH:/home/teddy/code/lib/python
# Python virtualenvwrapper
# see https://gist.github.com/pithyless/1208841
# see also http://matrix.windhunter.net/blog/2012/01/setup-python-env-on-lion-471.html
platform=$(uname);
export WORKON_HOME=~/envs
##################################################
# Check platform to set the python path
if [[ platform == 'Linux' ]]; then
  export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
elif [[ platform == 'Darwin' ]]; then
  export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
fi
##################################################
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
if [[ -r /usr/local/bin/virtualenvwrapper.sh ]]; then
  source /usr/local/bin/virtualenvwrapper.sh
else
  echo "WARNING: Can't find virtualenvwrapper.sh"
fi

# autojump自动补全
autoload -U compinit && compinit 
