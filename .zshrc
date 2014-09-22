# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

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

DEFAULT_USER=panjiesw

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-flow battery sublime rvm web-search bower command-not-found common-aliases encode64 lol npm nyan pip)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/panjiesw/bin"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

#------------------- MY ENVS -----------------#
export DEV="$HOME/Dev/envs"
export IDE="$HOME/Dev/ide"
export VENVS="$HOME/Dev/venvs"
export WORKSPACES="$HOME/Dev/workspaces"
export REPOS="$HOME/Dev/repo"

export MONGO_HOME="$DEV/mongodb-2.4.1"
export MONGO_DEV="$DEV/mongodb-2.6.0"

#Java
export JAVA_HOME="/usr/lib/jvm/java-8-oracle"
export JDK_HOME=$JDK_HOME

#PlayFramework
export PLAY="$DEV/play-2.2.2"
export ACTIVATOR="$DEV/activator-1.2.2"

#Android
export ANDROID_HOME="$IDE/android-studio/sdk"

#Ant
export ANT="$DEV/apache-ant-1.9.4"

#Maven
export M2_HOME="$DEV/apache-maven-3.2.3"
export M2="$M2_HOME/bin"

#Python
export VIRTUALENVWRAPPER_PYTHON="/usr/bin/python3"
export WORKON_HOME=$VENVS
source /usr/local/bin/virtualenvwrapper.sh

#Sencha
export SENCHA="$DEV/Sencha"
export SENCHA_CMD="$SENCHA/Cmd/5.0.0.160"
export EXTJS="$SENCHA/ext-5.0.0"

# PATHS
export PATH="$PATH:$PLAY:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$SENCHA_CMD:$ANT/bin:$M2"

#------------------ ALIASES ------------------#

# Use python3
alias python=python3
alias easy_install=easy_install-3.3
alias pip=pip3

alias activator="$ACTIVATOR/activator"
alias play="$PLAY/play -Dsbt.ivy.home=$HOME/.ivy2"

alias senchax="sencha -sdk $EXTJS"

alias wsj="cd $WORKSPACES/java"
alias wsa="cd $WORKSPACES/android"
alias wsw="cd $WORKSPACES/www"
alias wsn="cd $WORKSPACES/node"
alias wsb="cd $WORKSPACES/blog"
alias wspy="cd $WORKSPACES/python"
alias wss="cd $WORKSPACES/scala"
alias wssh="cd $WORKSPACES/showstat"
alias wsv="cd $WORKSPACES/scala/viewin"
alias wsp="cd $WORKSPACES/panjiesw"
alias wsps="cd $WORKSPACES/panjiesw/scala"
alias wspn="cd $WORKSPACES/panjiesw/node"
alias wsppy="cd $WORKSPACES/panjiesw/python"


alias rep="cd $REPOS"

alias idea="$IDE/idea-IU-135.480/bin/idea.sh"
alias studio="$IDE/android-studio/bin/studio.sh"
alias phpstorm="$IDE/PhpStorm-133.982/bin/phpstorm.sh"
alias webstorm="$IDE/WebStorm-135.1063/bin/webstorm.sh"
alias pycharm="$IDE/pycharm-3.4.1/bin/pycharm.sh"
alias eclipse="$IDE/eclipse/eclipse"
alias sts="$IDE/sts-bundle/sts-3.6.1.RELEASE/STS"
alias c="clear"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/home/panjiesw/.gvm/bin/gvm-init.sh" ]] && source "/home/panjiesw/.gvm/bin/gvm-init.sh"

export NVM_DIR="/home/panjiesw/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

eval "$(gulp --completion=zsh)"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
