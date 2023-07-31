# PATH
export PATH="$HOME/.local/bin/:$PATH"
export PATH="/opt/local/bin/:$PATH"
export PATH="/usr/local/bin/:$PATH"

# Aliasses.
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias lg='lazygit'
alias lazygit-dotfiles='lazygit --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias lgd='lazygit-dotfiles'
alias ssh='kitty +kitten ssh'
