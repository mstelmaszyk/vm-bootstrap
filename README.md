## Install
```shell
make install
make
```


## TO-DO
- Color Highlighter: https://github.com/dtonon/ch
- cd replacement: https://github.com/ajeetdsouza/zoxide
## Requirements

Install with OS package manager:
- stow

## Deployment

Deploy a configuration of `TOOL`:
```shell
$ stow <TOOL>
```

## Cheatsheet
### tmux

`C-a`: prefix key. `Ctrl` and `a` keys pressed together.

`M`: Meta key. Right `Alt`

`C-a ?` see a list of all available commands

`C-a z`: make a pane go full screen. Hit it again to shink it back to its previous size
#### Session handling


`$ tmux new -s <SESSION_NAME>` create a new session

`$ tmux ls` list the currently running sessions

`C-a d` detach current session (everyting is left running in the background)

`$ tmux attach -t <SESSION_NAME>` attach to a named session

#### Config reloads

`C-a r` hot-reload configuration

#### Spliting Panes
`C-a |` split horizontally

`C-a -` split vertically

#### Fast Pane-Switching

Navigation between panes without triggering the prefix key.

`M-h` go to the left pane

`M-l` go to the right pane

`M-j` go to the up pane

`M-k` go to the down pane

#### Pane resizing

`M-H` resize pane left

`M-J` resize pane down

`M-K` resize pane up

`M-L` resize pane right