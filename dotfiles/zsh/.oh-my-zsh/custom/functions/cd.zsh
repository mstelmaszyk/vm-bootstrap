# cd with auto-ls
function cd {
    pwd;
    builtin cd "$@" && \ls --color=auto -l
}

function ll {
    \ls -Alh --group-directories-first --time-style=long-iso
}
