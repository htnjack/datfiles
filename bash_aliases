# generic
alias e="nvim"
alias als="nvim ~/.bash_aliases"

alias c="cargo"
alias g="git"
alias gu="gitui"

# exa
if [ "$(command -v exa)" ]; then
    alias ls='exa -G  --color auto --icons -a -s type'
    alias ll='exa -l --color always --icons -a -s type --git'
fi

# bat
if [ "$(command -v bat)" ]; then
  unalias -m 'bat'
  alias ccat='bat --theme="Dracula"'
fi


