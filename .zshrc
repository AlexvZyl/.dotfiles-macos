source ~/.profile
if [ -e ~/.private/env.sh ]; then
    source ~/.private/env.sh
fi

eval "$(starship init zsh)"

echo "" && pfetch
