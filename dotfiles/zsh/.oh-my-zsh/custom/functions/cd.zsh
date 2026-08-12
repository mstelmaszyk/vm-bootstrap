# cd with auto-ls
function cd {
    pwd;
    builtin cd "$@" && \ls --color=auto -l
}

unalias ll 2>/dev/null

function ll {
    \ls -Alh --group-directories-first --time-style=long-iso --color=auto
}
