# If you come from bash you might have to change your $PATH.
export DEFAULT_USER="$(whoami)"
#go root
#GOROOT="/usr/local/go/bin/go"
export TERM="xterm-256color"
# Path to your oh-my-zsh installation.
export ZSH="/Users/sshiradwade/.oh-my-zsh"

#RIO
#export GOPATH=/Users/sshiradwade/rio-workspace/src

#VMR
#export GOPATH=/Users/sshiradwade/vmr-workspace

#CCR
#export GOPATH=/Users/sshiradwade/workspace/src/github-chf01.synamedia.com/CCR

#Rio-Rebase
#export GOPATH=/Users/sshiradwade/rio-rebase-workspace-new

#Personal
#export GOPATH=/Users/sshiradwade/my_workspace/learnGo/

# Exercism
#export GOPATH=/Users/sshiradwade/Exercism/go

# Simple Projects

export GOPATH=/Users/sshiradwade/my_workspace/simple_projects/src



export PATH=$HOME/bin:/usr/local/bin:$PATH:$GOPATH/bin
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# aliases: go<~>
alias gob='go build'
alias goc='go clean'
alias god='go doc'
alias gof='go fmt'
alias gofa='go fmt ./...'
alias gog='go get'
alias goi='go install'
alias gol='go list'
alias gom='go mod'
alias gop='cd $GOPATH'
alias gopb='cd $GOPATH/bin'
alias gops='cd $GOPATH/src'
alias gor='go run'
alias got='go test'
alias gov='go vet'

#
alias sz='source ~/.zshrc'
alias mongod='brew services start mongodb-community@4.2'
alias mongodbg='mongod --config /usr/local/etc/mongod.conf --fork'
alias cd1="cd .."
alias cd2="cd ../../"
alias mk="mkdir"
alias th='touch'
alias tc='nvim ~/.tmux.conf'
alias zc='nvim ~/.zshrc'
alias sm='brew services start mongodb-community'
alias stm='brew services stop mongodb-community'
alias z="fg"

#Git
alias gcn="git checkout -b"
alias gcb="git checkout"
alias gdlb="git branch -D"
alias gdrm="git push origin --delete"
alias gp="git push"
alias gpl="git pull"
alias gc="git commit -m"
alias gaa="git add ."
alias gi="git init"
alias gs="git status"
alias main="go run main.go"

# RIO
alias gst="git checout syna_tip"
alias gsm="git checout syna_master"
alias cdlibdash="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/libdash"
alias cdclog="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/clog"
alias cdgoutil="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/goutil"
alias cdmocklp="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/mocklp"
alias cdmsrcicd="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/msr-cicd"
alias cda8sync="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-a8-sync"
alias cda8updater="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-a8-updater"
alias cdapi="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-api"
alias cdaa="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-archive-agent"
alias cdam="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-archive-marker"
alias cdas="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-archive-sweeper"
alias cdasc="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-archive-sweeper-gc"
alias cdauditapi="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-audit-api"
alias cdauditservice="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-audit-service"
alias cdauditworker="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-audit-worker"
alias cdbmw="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-bmw"
alias cdriobundle="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-bundle"
alias cdcfg="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-cfg"
alias cdcfgagent="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-cfg-agent"
alias cdcicd="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-cicd"
alias cddo="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-dash-origin"
alias cddr="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-data-reaper"
alias cdriodevguide="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-dev-guide"
alias cdha="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-health-agent"
alias cdma="cd  /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-manifest-agent"
alias cdmr="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-meta-reaper"
alias cdmdm="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-metadata-model"
alias cdmockmdservice="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-mock-metadata-service"
alias cdmocksr="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-mock-segment-recorder"
alias cdmockss="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-mock-storage-service"
alias cdmockutil="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-mockutil"
alias cdnsa="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-nsa"
alias cdops="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-ops"
alias cdprometheus="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-prometheus"
alias cdrgc="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-recon-gc"
alias cdrgcm="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-recon-gc-marker"
alias cdra="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-reconstitution-agent"
alias cdrm="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-recorder-manager"
alias cdredis="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-redis"
alias cdrr="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-release"
alias cdrrc="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-release-configs"
alias cdss="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-sats-server"
alias cdsu="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-schema-upgrader"
alias cdsr="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-segment-recorder"
alias cdsgc="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-stream-gc"
alias cds8="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-super8"
alias cdtgc="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-timeline-gc"
alias cdtm="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-timeline-marker"
alias cdt="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-tools"
alias cdui="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-ui"
alias cdutil="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-util"
alias cdvh="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-varnish-hashd"
alias cdvs="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/rio-varnish-shard"
alias cdz="cd /Users/sshiradwade/rio-rebase-workspace/src/github.comcast.com/viper-cog/zootomy"

# Lab
alias lab1="ssh centos@10.1.137.10"
alias db1="ssh root@10.1.137.1"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
