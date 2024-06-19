# Sort of manually written by myself, Thalles Rodrigues
# Heavily inspired by Nim (https://github.com/nim65s/dotfiles/)
set -g _bg         282828
set -g _darkred    CC241D
set -g _red        FB4934
set -g _darkgreen  98971A
set -g _green      B8BB26
set -g _darkyellow D79921 
set -g _yellow     FABD2F
set -g _darkblue   458588 
set -g _blue       83A598
set -g _darkpurple B16286 
set -g _purple     D3869B
set -g _darkaqua   689D6A 
set -g _aqua       8EC07C
set -g _darkorange D65D0E
set -g _orange     FE8019
set -g _fg         EBDBB2
set -g _gray1      A89984 
set -g _gray2      928374
set -g _bg0_gh     1D2021
set -g _bg1        3C3836 
set -g _bg2        504945 
set -g _bg3        665C54 
set -g _bg4        7C6F64
set -g _bg0_s      323027 
set -g _fg4        A89984
set -g _fg3        BDAE93
set -g _fg2        D5C4A1
set -g _fg0        FBF1C7

# Formatting
function _wrap
    set val $argv[1]
    set rgb $argv[2]
    set_color $_bg3
    echo -n '⎡'
    set_color $rgb      
    echo -n $val
    set_color $_bg4
    echo -n '⎦'
end

function _sep
    set_color $_bg2
    echo -n '─'
end

# Optional elements
function _git
    set git_info (__fish_git_prompt | string trim -c ' ()')
    if test -n "$git_info"
        _sep
        _wrap $git_info $_darkblue
    end
end

function _jobs
    if test (jobs | wc -l) -gt 0
        _sep
        _wrap (jobs | wc -l) $_orange
    end
end

# Constant elements
function _hostname
    _sep
    _wrap (hostnamectl hostname) $_darkpurple
end

function _username
    _sep
    set usercolor $_darkyellow
    if fish_is_root_user
        set namecolor $_red
    end
    _wrap (whoami) $usercolor
end

function _pwd
    _sep
    _wrap (prompt_pwd --dir-length 2 --full-length-dirs 2) $_darkgreen
end

function _date
    _wrap (date +%H:%M:%S) $_darkaqua
end

function _privilege_indicator
    _sep
    echo -n '⎡'
    if fish_is_root_user
        set_color $_yellow
        echo -n '☢'
    else
        set_color $_red
        echo -n '☭'
    end
    set_color $_bg3
    echo -n ' ⎦'
end

function _symbol
    set_color $_fg
    echo -e '\n▶ '
end

# Main call
function fish_prompt
    _date
    _privilege_indicator
    _hostname
    _username
    _git
    _jobs
    _pwd
    _symbol
end

