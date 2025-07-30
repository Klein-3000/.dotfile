# editor
export EDITOR=nvim
export VISUAL=nvim

# FZF
export FZF_DEFAULT_OPTS='--bind=ctrl-j:down,ctrl-k:up,alt-j:preview-page-down,alt-k:preview-page-up,ctrl-q:abort --preview "[[ \$(file --mime {}) =~ binary ]] && echo {} is a binary file || (batcat --color=always {} || highlight -O ansi -l {} || cat {}) 2>/dev/null | head -500"'
export FZF_COMPLETION_TRIGGER='/'
export fzf_preview_cmd='[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (batcat --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -500'
