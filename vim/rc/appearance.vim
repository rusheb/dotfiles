"" show line numbers
set number
set relativenumber
set cursorline

" tmux stuff?
set term=screen-256color

"" red vertical line
set colorcolumn=89
au BufNewFile,BufRead *.py setlocal colorcolumn=89
highlight ColorColumn ctermbg=Yellow

"" status bar
set laststatus=2
set statusline+=%f

"" highlighting
syntax enable
colorscheme rigel

" SOLARIZED
" set background=light
" :ca dark set background=dark
" :ca light set background=light

" MOLOKAI
" colorscheme molokai

