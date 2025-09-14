#  ==========================================================================  #

#
# $HOME/.zshrc
#
# The following script is executed whenever an interactive shell session is
# initiated.
#

#  ==========================================================================  #

export ZSH="$HOME/.oh-my-zsh"
ZSH_CUSTOM="$HOME/.dotfiles/oh-my-zsh"

ZSH_THEME="colorless"

DISABLE_AUTO_TITLE="true"

if [ -d $ZSH ] && [ -f $ZSH/oh-my-zsh.sh ]; then
    source $ZSH/oh-my-zsh.sh
fi

#  ==========================================================================  #

alias ctest="env GTEST_COLOR=1 ctest --output-on-failure"

discord-ipc() {
    if ! pidof socat > /dev/null 2>&1; then
     [ -e /tmp/discord-ipc-0 ] && rm -f /tmp/discord-ipc-0
     socat UNIX-LISTEN:/tmp/discord-ipc-0,fork \
         EXEC:"npiperelay.exe //./pipe/discord-ipc-0"
    fi
}

alias vim="nvim"

alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"

alias ls="ls --color=auto -Fh"
alias ll="ls -l"
alias la="ls -lA"
alias lsa="ls -A"

alias tma="(tmux attach-session || tmux new-session -s $USER -c ~) &> /dev/null"

alias config="git --git-dir=$HOME/.dotfiles/.git --work-tree=$HOME"
config config --local status.showUntrackedFiles no

# FUCK BILL GATES IN HIS ASS
alias fbgiha="find . -name '*:Zone.Identifier' -type f -delete"
alias rmzi=fbgiha
