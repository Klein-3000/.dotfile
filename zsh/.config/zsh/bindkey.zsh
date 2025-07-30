# Plugins
# zsh-vi-mode Plugins
ZVM_VI_INSERT_ESCAPE_BINDKEY=jj

# OMZP sudo
# alt-s to double <esc> key
bindkey  -M viins '\es' sudo-command-line
bindkey  -M vicmd '\es' sudo-command-line

# Use fzf command history command search
# vi normal mode ctrl+r effective
bindkey '^R' fzf-history-widget
