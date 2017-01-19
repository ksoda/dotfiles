#
# Defines environment variables.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

HASKELLPATH="$HOME/.local"
RBENVPATH=~/.rbenv
export ANDROID_HOME="$HOME/Android/Sdk"
export PYTHONSTARTUP="$HOME/.pythonrc"
export GOPATH=~/go
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$RBENVPATH/bin:$GOPATH/bin:$HASKELLPATH/bin:$PATH"
export PATH="$PYENV_ROOT/versions/miniconda-latest/bin/:$PATH"
eval "$(pyenv init -)"
eval "$(rbenv init -)"
eval "$(direnv hook zsh)"

