packadd! onedark.vim

if (has("termguicolors"))
  set termguicolors
endif

colorscheme onedark

" Show line numbers
set number

" Show invisibles
set list

" Line break on words
set linebreak

" Auto save on pane switch (using vim-tmux-navigate)
let g:tmux_navigator_save_on_switch = 1

