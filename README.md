## TO-DO
- Color Highlighter: [ch](https://github.com/dtonon/ch)
- Code statistics: [tokei](https://github.com/xampprocky/tokei)
- `cd` replacement: [zoxide](https://github.com/ajeetdsouza/zoxide)
- `find` replacement: [fd](https://github.com/sharkdp/fd)
- `grep` replacement: [ripgrep](https://github.com/burntsushi/ripgrep)

## Requirements
Install the following tools with OS package manager:
- [bat](https://github.com/sharkdp/bat) - needed for previewing text file content with fzf
- [fzf](https://github.com/junegunn/fzf)
- [GNU stow](https://github.com/aspiers/stow) - dotfile organizer
    ```shell
        wget -P /tmp -- https://ftp.gnu.org/gnu/stow/stow-latest.tar.gz
        cd /tmp && tar -xvf stow-latest.tar.gz
        cd stow-*/ && ./configure && sudo make install
    ```
## Cloning

Clone the repository to `~/.local/src`:
```shell
git clone https://github.com/mstelmaszyk/vm-bootstrap.git ~/.local/src/vm-bootstrap
```

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
make stow TOOL=<tool>
```

## Cheatsheet
