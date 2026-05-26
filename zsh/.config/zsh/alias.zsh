# sudo current user alias command
alias sudo='sudo '

# common
alias less='less -N'
alias cls='clear'
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -l'
alias grep='grep --color=auto'

alias ..='cd ..'
alias ...='cd ../../'

alias pc='tldr -l | fzf --preview "tldr {} | less" --preview-window=right:80% | xargs tldr 2>/dev/null'

# docker
alias lzd='lazydocker'

# systemctl
alias sc='systemctl'
alias scst='systemctl start'
alias scto='systemctl stop'
alias scres='systemctl restart'
alias scsts='systemctl status'
alias scen='systemctl enable'
alias scdis='systemctl disable'
alias scrl='systemctl daemon-reload'

# `permanent` 永久
alias fwap='firewall-cmd --add-port'
alias fwas='firewall-cmd --add-service'
alias fwrp='firewall-cmd --remove-port'
alias fwrs='firewall-cmd --remove-service'
alias fwre='firewall-cmd --reload'
alias fwlp='firewall-cmd --list-ports'
alias fwls='firewall-cmd --list-services'

alias compose='docker compose'
