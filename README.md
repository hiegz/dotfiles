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

### Workaround: cryptsetup password prompt not shown

The cryptsetup password prompt is not shown on boot. The reason is not very
clear but there seems to be a workaround:

- Set `GRUB_GFXPAYLOAD_LINUX=text` in `/etc/default/grub`
- Regenerate `/boot/grub/grub.cfg` with `sudo grub-mkconfig -o /boot/grub/grub.cfg`

That's it.
