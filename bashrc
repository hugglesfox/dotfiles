# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.

# Don't put duplicate lines or lines starting with a space in the history.
HISTCONTROL=ignoreboth

# ls aliases
alias ll='ls -AF'
alias la='ls -A'
alias l='ls -CF'

# Debian packaging configs
export DEBFULLNAME='Hayley Hughes'
export DEBEMAIL=hayley@foxes.systems

# Set quilt patches dir
export QUILT_PATCHES=debian/patches

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

