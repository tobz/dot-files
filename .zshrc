# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export TERM=xterm-256color
ZSH_THEME="powerlevel10k/powerlevel10k"

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
COMPLETION_WAITING_DOTS="true"

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
plugins=()

[[ -s "/usr/local/etc/grc.zsh" ]] && source /usr/local/etc/grc.zsh

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

source $ZSH/oh-my-zsh.sh

# Make sure rustup is in the mix.
source ~/.cargo/env

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Set up our paths for Go tooling.
export PATH="$PATH:/usr/local/opt/go/libexec/bin"
export GOPATH=$HOME/.go
export PATH="$PATH:$GOPATH/bin"

alias vim="nvim"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PYENV_ROOT="$(pyenv root)"

alias gcheckout="git checkout"
alias gcommit="git commit"
alias gpush="git push origin"
alias gpull="git pull origin"

# Add in extra configuration here so that we can separate work bits from personal bits.
source ~/.config/zsh/work

# added by travis gem
[ -f /Users/tlawrence/.travis/travis.sh ] && source /Users/tlawrence/.travis/travis.sh
fpath+=${ZDOTDIR:-~}/.zsh_functions
export PATH="/usr/local/opt/php@7.2/bin:$PATH"
export PATH="/usr/local/opt/php@7.2/sbin:$PATH"

export PATH="/Users/tlawrence/bin:$PATH"

export FPATH="/Users/tlawrence/.wf/zsh-completion:$FPATH"
compinit

export PATH="/Users/tlawrence/bin:$PATH"
export PATH="/usr/local/opt/php@7.2/bin:$PATH"
export PATH="/usr/local/opt/php@7.2/sbin:$PATH"
export PATH="/usr/local/opt/git/bin:$PATH"
