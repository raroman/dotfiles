# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH:/usr/local/sbin:{$HOME}/Library/Python/2.7/bin:/usr/local/opt/elasticsearch@2.4/bin:$N_PREFIX/bin:/usr/local/opt/libxml2/bin:/Applications/Genymotion.app/Contents/MacOS/tools:{$ANDROID_HOME}/tools:{$ANDROID_HOME}/platform-tools:{$HOME}/phabricator/arcanist/bin

# Path to your oh-my-zsh installation.
export ZSH=/Users/reid.roman/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
plugins=(
  brew
  bundler
  git
  git-extras
  npm
  osx
  rails
  ruby
  vi-mode
  yarn
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

autoload -Uz up-line-or-beginning-search
autoload -Uz down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey '\eOA' up-line-or-beginning-search
bindkey '\e[A' up-line-or-beginning-search
bindkey '\eOB' down-line-or-beginning-search
bindkey '\e[B' down-line-or-beginning-search

export MANPATH=/usr/local/share/man:/usr/share/man:/opt/x11/share/man:/usr/local/man:$MANPATH
export EDITOR="nvim"
export ANDROID_HOME=$HOME/Library/Android/sdk
export N_PREFIX=$HOME/n
export FZF_DEFAULT_COMMAND='git ls-files ""'

eval "$(rbenv init -)"

alias git='hub'

alias g='git'
alias ga='git add'
alias gap='git add --patch'
alias gb='git branch'
alias gbc='git checkout -b'
alias gbd='git branch -d'
alias gc='git commit'
alias gcl='git clone'
alias gcm='git commit -m'
alias gco='git checkout'
alias gcp='git cherry-pick'
alias gd='git diff'
alias gds='git diff --staged'
alias gf='git fetch'
alias gg='git grep'
alias gga='git grep -A 5'
alias ggb='git grep -B 5'
alias ggc='git grep -C 3'
alias gl='git log'
alias glg='git log --graph --abbrev-commit --decorate'
alias gls='git ls-files'
alias gm='git merge'
alias gpl='git pull'
alias gps='git push'
alias gr='git remote'
alias gs='git status --short'
alias gsd='git stash drop'
alias gsl='git stash list'
alias gsp='git stash pop'
alias gss='git stash save'
alias v='nvim'
alias rn='react-native'

alias prod='heroku run bin/rails c --app=opendoor-web -s performance'
alias staging='heroku run bin/rails c --app=staging-opendoor-web -s performance'

# rename a branch:
# git branch -m old_name new_name
# git push origin :old_name new_name
# git push origin -u new_name

PROMPT='%D %* ${ret_status}%{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

