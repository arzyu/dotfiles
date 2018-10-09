# set language
export LANG=zh_CN.UTF-8

# change tab size
tabs -4

export EDITOR='vim'

# use vi mode and bindkey
bindkey -v
bindkey -M vicmd '^r' history-incremental-pattern-search-backward
bindkey -M vicmd '^f' history-incremental-pattern-search-forward
bindkey -M viins '^r' history-incremental-pattern-search-backward
bindkey -M viins '^f' history-incremental-pattern-search-forward
bindkey '^p' up-line-or-search
bindkey '^n' down-line-or-search

# kill Esc lag
export KEYTIMEOUT=1

