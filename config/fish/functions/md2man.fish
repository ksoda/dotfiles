function md2man
  pandoc -s -f markdown -t man $argv[1] | man -l -
end

