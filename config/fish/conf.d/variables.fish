set -x $EDITOR vim
alias e $EDITOR
set -x LESS "-R"
set -x LESSOPEN "| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"
set -x PATH $HOME/go/bin $PATH
set -x PATH $HOME/.local/bin $PATH
set -x PATH $HOME/.npm-global/bin $PATH
set -x PATH $HOME/.cargo/bin $PATH

