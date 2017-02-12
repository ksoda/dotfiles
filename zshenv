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
RBENVPATH="$HOME/.rbenv"
CONDA_PATH="$HOME/miniconda3"
export ANDROID_HOME="$HOME/Android/Sdk"
export PYTHONSTARTUP="$HOME/.pythonrc"
export GOPATH="$HOME/go"
export PATH="$RBENVPATH/bin:$GOPATH/bin:$HASKELLPATH/bin:$PATH"

eval "$(rbenv init -)"
eval "$(direnv hook zsh)"

