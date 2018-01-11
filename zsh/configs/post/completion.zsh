# load our own completion functions
fpath=(~/.zsh/completion /usr/local/share/zsh/site-functions $fpath)

# completion
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit
command -v stack >/dev/null 2>&1 || {
    eval "$(stack --bash-completion-script stack)"
}
compdef '_files -g "*.hs"' stack
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
if [ -e /usr/share/bash-completion/completions/lxc ]
then source /usr/share/bash-completion/completions/lxc
fi
