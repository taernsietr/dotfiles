function rp
  # ~/Run/passmag/bin/python3 ~/Run/passmag/passmag.py $argv
  sqlite3 ~/Run/passmag/pw.db "select pw_value from pw where pw_ref = '$argv';" | xclip -sel clip
end
