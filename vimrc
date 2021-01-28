" Enable one color scheme
packadd! vim-one
syntax enable

" Enable true color
if exists('+termguicolors')
 let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
 let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
 set termguicolors
endif

" Use light theme
set background=light

" Enable italics for comments
let g:one_allow_italics = 1

colorscheme one

" Show invisibles
set list

" Line break on words
set linebreak

" Only match case if any caps is used
set ignorecase
set smartcase

" Show line numbers
set number

" Enable omnicompletions
set omnifunc=syntaxcomplete#Complete

" Auto save on pane switch (using vim-tmux-navigate)
let g:tmux_navigator_save_on_switch = 1

let g:lightline = {
      \ 'colorscheme': 'one',
      \ }

