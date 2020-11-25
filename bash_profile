# ~/.bash_profile: executed by bash(1) for login shells.

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

