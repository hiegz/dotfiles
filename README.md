# hiegz/dotfiles

A bunch of files with a dot in front of their name.

### Requirements

- You must be running Arch Linux
- zsh should be the default shell

### Installation

```
git clone --bare https://github.com/hiegz/dotfiles $HOME/.dotfiles/.git
git --git-dir=$HOME/.dotfiles/.git --work-tree=$HOME checkout -f
source $HOME/.zshrc
```

### Keep WSL running

By default Windows will stop WSL after all Terminal windows are closed. The
workaround is to simply run `wsl --exec dbus-launch true`
