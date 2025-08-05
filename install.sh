# Git
stow gitconfig
# Shell
stow zsh
chsh zsh
# Editor
stow vim
stow nvim
# fzf & fastfetch
stow fzf
stow fastfetch

# install fzf command
chmod +x /home/$USER/.fzf/install
/home/$USER/.fzf/install

which fzf || ln -s /home/$USER/.fzf/bin/fzf /usr/local/bin/fzf

exec zsh

# recommended install command
echo -e "recommended install command
1.fd(nvim)\n\
2.rg(nvim)\n\
3.yazi\n\
4.tldr"
