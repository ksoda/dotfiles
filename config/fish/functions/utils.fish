function mcd
  mkdir -p $argv[1]; and cd $argv[1];
end

function md2html
  pandoc $argv[1] | lynx -stdin -assume_local_charset=UTF-8 -vikeys
end

function md2man
  pandoc -s -f markdown -t man $argv[1] man -l -
end

