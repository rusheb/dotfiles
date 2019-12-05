""" FORMATTING
" indentation defaults
filetype indent on
set expandtab
set shiftwidth=2
set tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType php setlocal shiftwidth=4 tabstop=4

"" Shortcut to format a JSON file
nmap =j :%!python -m json.tool<CR>


""" SHORTCUTS FOR EDITING TEXT
" indent and dedent
nnoremap > >>
nnoremap < <<
vnoremap < <gv
vnoremap > >gv

"" autocomplete
" use phpactor for php autocompletion
autocmd FileType php setlocal omnifunc=phpactor#Complete
let g:phpactorOmniError = v:true

" automplete on crtl-space or insertion of of > or $
autocmd FileType php inoremap <NUL> <C-x><C-o>
autocmd FileType php inoremap > ><C-x><C-o>

""REMAPS
" esc to tab
nnoremap <Tab> <Esc>
vnoremap <Tab> <Esc>gV
onoremap <Tab> <Esc>
inoremap <Tab> <Esc>`^
inoremap <Leader><Tab> <Tab>

" pound to hash
inoremap £ #

" change where temporary files are created
set backupdir=/tmp//
set directory=/tmp//
set undodir=/tmp//


" FOLDING STUFF WAS COMMENTED OUT ON 30/9/2019
""" FOLDING
set foldmethod=syntax
set foldlevelstart=1
set nofoldenable
nnoremap zD zMzr

let javaScript_fold=1         " JavaScript
let php_folding=1             " PHP
let sh_fold_enabled=1         " sh
let vimsyn_folding='af'       " Vim script
autocmd FileType python set foldmethod=indent

" nnoremap <space> zA
" vnoremap <space> zA

