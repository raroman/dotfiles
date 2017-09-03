set -x MANPATH /usr/local/share/man /usr/share/man /opt/x11/share/man
set -Ux EDITOR atom
set -Ux ANDROID_HOME {$HOME}/Library/Android/sdk
set -Ux N_PREFIX "$HOME/n"

fish_vi_key_bindings

set fish_user_paths /usr/local/sbin {$HOME}/Library/Python/2.7/bin /usr/local/opt/elasticsearch@2.4/bin $N_PREFIX/bin /usr/local/opt/libxml2/bin /Applications/Genymotion.app/Contents/MacOS/tools {$ANDROID_HOME}/tools {$ANDROID_HOME}/platform-tools {$HOME}/phabricator/arcanist/bin

status --is-interactive; and source (rbenv init -|psub)

alias git 'hub'

alias g 'git'
alias ga 'git add'
alias gap 'git add --patch'
alias gb 'git branch'
alias gbc 'git checkout -b'
alias gbd 'git branch -d'
alias gc 'git commit'
alias gcl 'git clone'
alias gcm 'git commit -m'
alias gco 'git checkout'
alias gcp 'git cherry-pick'
alias gd 'git diff'
alias gds 'git diff --staged'
alias gf 'git fetch'
alias gg 'git grep'
alias gga 'git grep -A 5'
alias ggb 'git grep -B 5'
alias ggc 'git grep -C 3'
alias gl 'git log'
alias glg 'git log --graph --abbrev-commit --decorate'
alias gls 'git ls-files'
alias gm 'git merge'
alias gpl 'git pull'
alias gps 'git push'
alias gr 'git remote'
alias gs 'git status --short'
alias gsd 'git stash drop'
alias gsl 'git stash list'
alias gsp 'git stash pop'
alias gss 'git stash save'
alias rn 'react-native'

alias prod 'heroku run bin/rails c --app=opendoor-web -s performance'
alias staging 'heroku run bin/rails c --app=staging-opendoor-web -s performance'

# rename a branch:
# git branch -m old_name new_name
# git push origin :old_name new_name
# git push origin -u new_name

# Status Chars
set __fish_git_prompt_char_dirtystate '😊'
set __fish_git_prompt_char_stagedstate '😬'
set __fish_git_prompt_char_untrackedfiles '🙃'
set __fish_git_prompt_char_stashstate '😴'
set __fish_git_prompt_char_upstream_ahead '😋'
set __fish_git_prompt_char_upstream_behind '😅'

function fish_prompt
  set last_status $status

  set_color $fish_color_cwd
  printf '%s ' (prompt_pwd)
  set_color normal

  printf '%s%s⚡️  ' (date "+$c2%H$c0:$c2%M$c0:$c2%S") (__fish_git_prompt)

  set_color normal
end
