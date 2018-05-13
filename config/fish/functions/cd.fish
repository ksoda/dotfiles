#!/usr/bin/env fish
#
function cd
  if test (count $argv) -gt 0
    builtin cd $argv
  else
    z -l 2> /dev/null | fzf --height "40%" | awk '{ print $2 }' | read recent
    if [ $recent ]
        builtin cd $recent
    end
  end
end
