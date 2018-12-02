##############################################################################
#   Filename: .bashrc                                                        #
# Maintainer: saturnisbig <i.kenting@gmail.com>                            #
#        URL: http://github.com/saturnisbig/dotfiles                     #
#    Ref-URL: http://github.com/michaeljsmalley/dotfiles                     #
#                                                                            #
#                                                                            #
# Sections:                                                                  #
#   01. General ................. General Bash behavior                      #
#   02. Aliases ................. Aliases                                    #
#   03. Theme/Colors ............ Colors, prompts, fonts, etc.               #
#   04. Plugins .............. virtualenv, heroku, homebrew, etc.            #
##############################################################################

##############################################################################
# 01. General                                                                #
##############################################################################
# Shell prompt
export PS1="\n\[\e[0;36m\]┌─[\[\e[0m\]\[\e[1;33m\]\u\[\e[0m\]\[\e[1;36m\] @ \[\e[0m\]\[\e[1;33m\]\h\[\e[0m\]\[\e[0;36m\]]─[\[\e[0m\]\[\e[1;34m\]\w\[\e[0m\]\[\e[0;36m\]]\[\e[0;36m\]─[\[\e[0m\]\[\e[0;31m\]\t\[\e[0m\]\[\e[0;36m\]]\[\e[0m\]\n\[\e[0;36m\]└─[\[\e[0m\]\[\e[1;37m\]\$\[\e[0m\]\[\e[0;36m\]]› \[\e[0m\]"

# If fortune is installed, run a fortune
if [ -e /opt/local/bin/fortune ]; then
    fortune -so
    echo " "
fi

##############################################################################
# 02. Aliases                                                                #
##############################################################################
# Enable colors in "ls" command output
alias ls="ls -Glah"

## pip aliases
alias pipcache='pip install --download ${HOME}/.pip/tmp/'
alias pipinstall='pip install --no-index --find-links=file://${HOME}/.pip/tmp/'

## Git Aliases
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'
alias got='git '
alias get='git '

## apt-get alias
alias ai="sudo apt-get install"
alias ar="sudo apt-get autoremove"
alias ad="sudo apt-get update"
alias ag="sudo apt-get upgrade"
##############################################################################
# 03. Theme/Colors                                                           #
##############################################################################
# CLI Colors
export CLICOLOR=1
# Set "ls" colors
export LSCOLORS=Gxfxcxdxbxegedabagacad

# for sogou
export GTK_IM_MODULE=fcitx      
export QT_IM_MODULE=fcitx      
export XMODIFIERS="@im=fcitx" 
#export PS1="\u@\h:\w $"
##export PS1=":~ )"
#export CLICOLOR=1
#export GREP_OPTIONS="--color=auto"

# set the window and tab title
#export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'

##############################################################################
# 04. Plugins
##############################################################################
# Your previous /Users/teddy/.bash_profile file was backed up as /Users/teddy/.bash_profile.macports-saved_2013-04-20_at_23:32:39
##

# MacPorts Installer addition on 2013-04-20_at_23:32:39: adding an appropriate PATH variable for use with MacPorts.
#export PATH=/usr/local/share/pytho:n/usr/local/sbin:/Users/teddy/macport/bin:/Users/teddy/macport/sbin:$PATH
#export PATH=/usr/local/sbin:/usr/local/share/python:/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
# Ensure user-installed binaries take precedence.
export PATH=/usr/local/bin:$PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Python virtualenvwrapper
# see https://gist.github.com/pithyless/1208841
# see also http://matrix.windhunter.net/blog/2012/01/setup-python-env-on-lion-471.html
export WORKON_HOME=$HOME/envs
##################################################
# Check platform to set the python path
if [[ $(uname) == 'Linux' ]]; then
  export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
elif [[ $(uname) == 'Darwin' ]]; then
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
