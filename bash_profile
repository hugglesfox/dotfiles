# ~/.bash_profile: executed by bash(1) for login shells.

# Debian packaging configs
export DEBFULLNAME="Hayley Hughes"
export DEBEMAIL=hayley@foxes.systems

# Set quilt patches dir
export QUILT_PATCHES=debian/patches

# Source .cargo/env
if [ -f ~/.cargo/env ]; then
    . ~/.cargo/env
fi

# Source .profile
if [ -f ~/.profile ]; then
    . ~/.profile
fi

