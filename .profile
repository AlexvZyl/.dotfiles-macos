# PATH
export PATH="$HOME/.local/bin/:$PATH"
export PATH="/opt/local/bin/:$PATH"
export PATH="/usr/local/bin/:$PATH"

# Dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias lg='lazygit'
alias lazygit-dotfiles='lazygit --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias lgd='lazygit-dotfiles'

# Remoting
alias ssh='kitty +kitten ssh'
alias rsync-aid='rsync -avz --progress --exclude .git/ --exclude aws/ --exclude data/ --exclude output/ --exclude analysis/ --exclude beats-models --exclude src.egg-info/ AdvanceGuidance_EC2:/home/ubuntu/mnt/tb-mdel-dev/ ~/AdvanceGuidance/Remotes/tb-mdel-dev'
