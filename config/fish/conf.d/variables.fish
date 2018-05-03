set -U EDITOR vim
alias e $EDITOR
set -x LESS "-R"
set -x LESSOPEN "| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"
set -x PATH $HOME/go/bin $PATH

# ANDROID_HOME="$HOME/Android/Sdk"
# CARGOPATH="$HOME/.cargo"
# HASKELLPATH="$HOME/.local"
# NODEPATH="$HOME/.npm-global"
# PYTHONSTARTUP="$HOME/.pythonrc"
# RBENVPATH="$HOME/.rbenv"
