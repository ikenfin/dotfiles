#zmodload zsh/zprof
export LANG=en_US.UTF-8

#
# User configuration sourced by interactive shells
#

# Define zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh

ZSH_THEME="eriner"
unsetopt SHARE_HISTORY
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#777'

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# User configuration

export EDITOR='vim'
export GOPATH="${HOME}/.go:${HOME}/go"
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:/usr/local/bin:${HOME}/.bin:${HOME}/.gem/ruby/2.3.0/bin:${GOPATH}/bin:${GOROOT}/bin"

# Import my bash aliases
[ -r ~/.bash_alias ] && source ~/.bash_alias

lazy_load() {
    echo "Lazy loading $1 ..."
    local -a names
    if [[ -n "$ZSH_VERSION" ]]; then
        names=("${(@s: :)${1}}")
    else
        names=($1)
    fi
    unalias "${names[@]}"
    . $2
    shift 2
    $*
}

group_lazy_load() {
    local script
    script=$1
    shift 1
    for cmd in "$@"; do
        alias $cmd="lazy_load \"$*\" $script $cmd"
    done
}

export NVM_DIR=~/.nvm
group_lazy_load $HOME/.nvm/nvm.sh nvm node npm truffle gulp npx adonis

unset -f group_lazy_load

test -d "${GOPATH}" || mkdir "${GOPATH}"
test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"
#zprof

eval "$(rbenv init -)"
# docker-sync
if which ruby >/dev/null && which gem >/dev/null; then
  PATH="$(ruby -r rubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi

