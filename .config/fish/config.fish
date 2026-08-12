if status is-interactive
    fish_add_path /home/hiegz/.local/bin

    set -U fish_greeting ""

    alias config "git --git-dir=$HOME/.dotfiles/.git --work-tree=$HOME"
    config config --local status.showUntrackedFiles no

    alias tma "tmux attach-session; or tmux new-session -s hiegz -c ~ > /dev/null 2>&1"

    # FUCK BILL GATES IN HIS ASS
    alias fbgiha "find . -name '*:Zone.Identifier' -type f -delete"
    alias rmzi "fbgiha"

    if test -d $HOME/go/bin
        fish_add_path $HOME/go/bin
    end
end

# ZVM
set -gx ZVM_INSTALL "$HOME/.zvm/self"
set -gx PATH $PATH "$HOME/.zvm/bin"
set -gx PATH $PATH "$ZVM_INSTALL/"

# SDL
set -gx SDL_VIDEODRIVER "wayland"
set -gx SDL_VIDEO_DRIVER "wayland"
