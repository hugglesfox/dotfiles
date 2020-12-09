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

# Debian packaging configs
export DEBFULLNAME="Hayley Hughes"
export DEBEMAIL=hayley@foxes.systems

# Set quilt patches dir
export QUILT_PATCHES=debian/patches

# Source .cargo/env
if [ -f ~/.cargo/env ]; then
    source ~/.cargo/env
fi

# Source .profile
if [ -f ~/.profile ]; then
    source ~/.profile
fi

# Enable fzf completions and keybindings
if [ -d /usr/share/doc/fzf/examples ]; then
    source /usr/share/doc/fzf/examples/key-bindings.bash
    source /usr/share/doc/fzf/examples/completion.bash
fi

