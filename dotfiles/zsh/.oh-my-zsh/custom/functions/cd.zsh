unalias ll 2>/dev/null
function ll {
    \ls -lh --group-directories-first --time-style=long-iso --color=auto
}

unalias la 2>/dev/null
function la {
    \ls -Alh --group-directories-first --time-style=long-iso --color=auto
}

function cd {
    pwd;
    builtin cd "$@" && ll
}
