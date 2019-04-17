call plug#begin('~/.vim/plugged')
Plug 'AndrewRadev/dsf.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'christoomey/vim-tmux-navigator'
Plug 'chaoren/vim-wordmotion'
"Plug 'jelera/vim-javascript-syntax'
Plug 'phpstan/vim-phpstan'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'", { 'on': 'surround' }
Plug 'vim-vdebug/vdebug'
Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}
Plug 'w0rp/ale'
Plug 'kien/ctrlp.vim'
Plug 'davidhalter/jedi-vim'
Plug 'ambv/black'
"" the below plugins were disabled on 2018-11-29
"Plug 'scrooloose/nerdtree'", { 'on':  'NERDTree' }
"Plug 'pangloss/vim-javascript'", { 'on': 'js' }
"Plug 'benmills/vimux'
call plug#end()
