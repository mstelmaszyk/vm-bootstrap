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

```shell
wget https://mirror.de.leaseweb.net/epel/8/Everything/x86_64/Packages/s/stow-2.4.0-1.el8.noarch.rpm /tmp
rpm -Uvh /tmp/stow-2.4.0-1.el8.noarch.rpm
```

---

## Cloning
Clone the repository to 
```shell
git clone https://github.com/mstelmaszyk/vm-bootstrap.git ~/.local/share/vm-bootstrap
```
---
## Dotfiles 
- **git**
- **tmux**
- **vim**
- **[zoxide](https://github.com/ajeetdsouza/zoxide)** - smarter cd command, inspired by z and autojump.
It remembers which directories you use most frequently, so you can "jump" to them in just a few keystrokes.
- **zsh**

### Deployment

Deploy a configuration of `TOOL`:
```shell
stow -v -d ~/.local/share/vm-bootstrap/dotfiles -t ~/ -R <TOOL>
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
