# cd with auto-ls
cd () {
    pwd;
    builtin cd "$@" && ls --color=auto -l
}

ll () {
    ls -Alh --group-directories-first --time-style=long-iso
}