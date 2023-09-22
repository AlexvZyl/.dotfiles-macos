# PATH
#export PATH="$HOME/.local/bin/:$PATH"
#export PATH="/opt/local/bin/:$PATH"
#export PATH="/usr/local/bin/:$PATH"

# Dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias lg='lazygit'
alias lazygit-dotfiles='lazygit --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias lgd='lazygit-dotfiles'

# Remoting
alias ssh='kitty +kitten ssh'
alias rsync-aid='rsync -avz --progress --exclude aws/ --exclude data/ --exclude src/ImpulseResponse/Recordings/ --exclude output/ --exclude beats-models AdvanceGuidance_EC2:/home/ubuntu/mnt/tb-mdel-dev/ ~/AdvanceGuidance/Remotes/tb-mdel-dev'

# Pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
