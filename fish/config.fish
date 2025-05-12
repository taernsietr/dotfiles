set fish_greeting
set -Ux MANROFFOPT '-c'
set -Ux MANPAGER "sh -c 'col -bx | bat -l man -p'"

zoxide init fish | source

if status is-interactive
    motd
end


# pnpm
set -gx PNPM_HOME "/home/tsrodr/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
