#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Use vim for everything
export VISUAL=vim
export EDITOR=$VISUAL

# Don't put duplicate lines or lines starting with a space in the history.
HISTCONTROL=ignoreboth

# ls aliases
alias ll='ls -AF'
alias la='ls -A'
alias l='ls -CF'

# Add ~/bin to path
if [ -d ~/bin ]; then
    export PATH="$HOME/bin:$PATH"
fi

# Source .cargo/env
if [ -d ~/.cargo/bin ]; then
    export PATH="$HOME/.cargo/bin:$PATH"
fi

# Source .emacs.d/bin for doom cli tool
if [ -d ~/.emacs.d/bin ]; then
    export PATH="$HOME/.emacs.d/bin:$PATH"
fi

