# Brew env
eval "$(/opt/homebrew/bin/brew shellenv)"

# Git prompt
autoload -Uz vcs_info
precmd() { vcs_info }

# Branch format
zstyle ':vcs_info:git:*' formats '%F{green}(%b)%f'
zstyle ':vcs_info:git:*' actionformats '%F{red}(%b|%a)%f'

# Prompt config
setopt PROMPT_SUBST
PROMPT='%F{blue}%1~%f ${vcs_info_msg_0_}%# '

# Shell vars
export TERM=screen-256color
export EDITOR="vim"
export CLICOLOR=1

# Go env
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Key bindings
bindkey -v
bindkey -M viins '^?' backward-delete-char
bindkey -M viins '^H' backward-delete-char

# Aliases
alias grep='grep --color=auto'
alias cls='clear -x'
