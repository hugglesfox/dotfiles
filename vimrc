" Enable dracula color scheme
packadd! dracula
syntax enable
let g:dracula_colorterm = 0
colorscheme dracula

" Show invisibles
set list

" Line break on words
set linebreak

" Only match case if any caps is used
set ignorecase
set smartcase

" Enable omnicompletions
set omnifunc=syntaxcomplete#Complete

" Auto save on pane switch (using vim-tmux-navigate)
let g:tmux_navigator_save_on_switch = 1

let g:lightline = {
      \ 'colorscheme': 'dracula',
      \ }

