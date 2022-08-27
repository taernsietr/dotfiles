function remove_orphans
  sudo pacman -Rsn (pacman -Qdtq)
end
