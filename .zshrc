# brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# shell env
export TERM=screen-256color
export PROMPT='%n@%m:%F{yellow}%~%f$ '
export EDITOR="vim"
export CLICOLOR=1

# go env
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# key bindings
bindkey -v
bindkey -M viins '^?' backward-delete-char
bindkey -M viins '^H' backward-delete-char

# aliases
alias grep='grep --color=auto'
alias cls='clear -x'
