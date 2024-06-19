set fish_greeting

set -Ux MANROFFOPT '-c'
set -Ux MANPAGER "sh -c 'col -bx | bat -l man -p'"

zoxide init fish | source

if status is-interactive
    motd
end

