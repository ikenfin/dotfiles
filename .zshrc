# zmodload zsh/zprof
export LANG=en_US.UTF-8

# User configuration

export EDITOR='vim'
export GOPATH="${HOME}/.go:${HOME}/go"
export NVM_DIR="${HOME}/.nvm"
export JAVA_OPTS='-XX:+IgnoreUnrecognizedVMOptions'
export ANDROID_HOME="${HOME}/Library/Android/sdk/"

export PATH="${PATH}:/usr/local/bin:${HOME}/.bin:${HOME}/.gem/ruby/2.3.0/bin:${GOPATH}/bin:${ANDROID_HOME}/tools/bin:${ANDROID_HOME}/tools/lib"

export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# zsh config
ZSH_THEME="eriner"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#777'
CASE_SENSITIVE="true"
DISABLE_AUTO_TITLE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

unsetopt SHARE_HISTORY

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh

# Import aliases
[[ -s ${HOME}/.bash_alias ]] && source ${HOME}/.bash_alias

# custom functions
[[ -s ${HOME}/.zsh_user_functions ]] && source ${HOME}/.zsh_user_functions

# haskell
# [[ -s "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env" ]] && source "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env"

# eval "$(rbenv init -)"
# docker-sync
# if which ruby >/dev/null && which gem >/dev/null; then
#   PATH="$(ruby -r rubygems -e 'puts Gem.user_dir')/bin:$PATH"
# fi

# zprof