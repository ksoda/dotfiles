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


HASKELLPATH=~/.local
RBENVPATH=~/.rbenv
export GOPATH=~/go
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$RBENVPATH/bin:$GOPATH/bin:$HASKELLPATH/bin:$PATH"
eval "$(pyenv init -)"
