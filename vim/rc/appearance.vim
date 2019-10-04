"" show line numbers
set number
set relativenumber
" set cursorline

"" tmux stuff?
set term=screen-256color

"" red vertical line
set colorcolumn=80
au BufNewFile,BufRead *.py setlocal colorcolumn=88
highlight ColorColumn ctermbg=Yellow

"" status bar
set laststatus=2
set statusline+=%f

"" highlighting
syntax enable
" set background=light
" :ca dark set background=dark
" :ca light set background=light

" colorscheme molokai
