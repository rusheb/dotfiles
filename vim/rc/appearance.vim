"" show line numbers
set number
set relativenumber

"" tmux stuff?
set term=screen-256color

"" red vertical line
set cc=80

"" status bar
set laststatus=2
set statusline+=%f

"" highlighting
syntax enable
set background=dark
:ca dark set background=dark
:ca light set background=light

colorscheme solarized
