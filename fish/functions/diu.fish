function diu
    sudo du -xh $argv | sort -rhk 1 | head -n 20
end
