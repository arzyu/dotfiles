# set language
export LANG=zh_CN.UTF-8

# change tab size
tabs -4

export EDITOR='vim'

# use vi mode and bindkey
bindkey -v
bindkey '^r' history-incremental-search-backward
bindkey '^p' up-line-or-search
bindkey '^n' down-line-or-search

# kill Esc lag
export KEYTIMEOUT=1

