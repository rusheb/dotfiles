call plug#begin('~/.vim/plugged')
" appearance
"Plug 'altercation/vim-colors-solarized'
"Plug 'jez/vim-colors-solarized'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'Rigellute/rigel'
" vue
Plug 'posva/vim-vue'
" navigation
Plug 'AndrewRadev/dsf.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'chaoren/vim-wordmotion'
Plug 'kien/ctrlp.vim'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
" other shortcuts
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'", { 'on': 'surround' }
" git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
" static analysis general
Plug 'w0rp/ale'
" static analysis python
Plug 'davidhalter/jedi-vim'
Plug 'ambv/black'
Plug 'integralist/vim-mypy'
" static analysis PHP
Plug 'phpstan/vim-phpstan'
Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}
Plug 'vim-vdebug/vdebug'
" other apps
Plug 'shime/vim-livedown'
"Plug 'lervag/vimtex'
call plug#end()
