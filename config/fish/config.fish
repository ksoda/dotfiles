if not functions -q fisher
  set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
  curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
  fish -c fisher
end

source /home/ken/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
eval (direnv hook fish)

# ghcup-env
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME
test -f /home/ken/.ghcup/env ; and set -gx PATH $HOME/.cabal/bin /home/ken/.ghcup/bin $PATH
