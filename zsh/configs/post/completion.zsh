# load our own completion functions
fpath=(~/.zsh/completion /usr/local/share/zsh/site-functions $fpath)

# completion
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

