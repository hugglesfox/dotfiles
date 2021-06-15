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

