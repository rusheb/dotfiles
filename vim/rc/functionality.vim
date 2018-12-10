"" FILE NAVIGATION
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 30
let g:netrw_altv = 1
let g:netrw_winsize = 25
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

"" FOLDING
set foldmethod=syntax
set foldlevelstart=1
set nofoldenable

let javaScript_fold=1         " JavaScript
let php_folding=1             " PHP
let sh_fold_enabled=1         " sh
let vimsyn_folding='af'       " Vim script

"" FORMATTING
" indentation defaults
filetype indent on
set expandtab
set shiftwidth=2
set tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType php setlocal shiftwidth=4 tabstop=4

" format json
nmap =j :%!python -m json.tool<CR>

"" SHORTCUTS FOR EDITING TEXT
" swap words 
nnoremap <silent> gl "_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><c-o>/\w\+\_W\+<CR><c-l>
nnoremap <silent> gh "_yiw?\w\+\_W\+\%#<CR>:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><c-o><c-l>

" indent and dedent
nnoremap > >>
nnoremap < <<
vnoremap < <gv
vnoremap > >gv

" autocomplete
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

"" INTER-FILE
" switch buffers
"nmap <C-P> :bp<CR>
"nmap <C-N> :bn<CR>

" system copy and paste
map <F2> :.w !pbcopy<CR><CR>
map <F3> :r !pbpaste<CR>

" splits open below or right rather than above or left
set splitbelow
set splitright

""CONVENIENT REMAPS
"" esc to tab
nnoremap <Tab> <Esc>
vnoremap <Tab> <Esc>gV
onoremap <Tab> <Esc>
inoremap <Tab> <Esc>`^
inoremap <Leader><Tab> <Tab>

" fix hash
inoremap £ #

" common typos
:ca E e

"--OLD--"
" commented on 2018-11-29
" insert character
":noremap <space> i_<Esc>r
" format entire file
"nmap == gg=G
