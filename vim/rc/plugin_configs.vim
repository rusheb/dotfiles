" ---ALE-----------------------------------------------------------------------
let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1

let g:ale_php_phpcs_standard='PSR2'
let g:ale_php_phpstan_level = '4'
let g:ale_php_phpstan_executable = 'vendor/bin/phpstan'

let g:ale_python_flake8_options = '--max-line-length=88'
let g:ale_python_mypy_options = '--ignore-missing-imports'

let g:ale_linters = {
      \ 'php': ['phpcs', 'phpstan'],
      \ 'python': ['flake8', 'mypy']
      \ }
let g:ale_fixers = {
      \ 'php': ['phpcbf'],
      \ 'python': ['isort']
      \ }
let g:ale_echo_msg_format = '%linter%: %s'
let g:ale_lint_on_text_changed = 'never'

:ca AF ALEFix
:ca AI ALEInfo

"---BLACK----------------------------------------------------------------------
autocmd BufWritePre *.py execute ':Black'

"---CTRL-P---------------------------------------------------------------------
let g:ctrlp_user_command = ['.git/', 'git ls-files --cached --others  --exclude-standard %s']

"---JEDI----------------------------------------------------------------------
autocmd filetype python let g:jedi#goto_definitions_command = "gd"

"---PYMODE--------------------------------------------------------------------
let g:pymode_virtualenv = 0
let g:pymode_run = 0
let g:pymode_breakpoint = 0
let g:pymode_folding = 0
let g:pymode_lint = 0
let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_syntax = 0
let g:pymode_options_colorcolumn = 0
" let g:pymode_python = 'disable'
let g:pymode_folding = 0

"---LIVEDOWN------------------------------------------------------------------
nmap gm :LivedownToggle<CR>

"---PHPACTOR------------------------------------------------------------------
autocmd filetype php nmap <Leader>tt :call phpactor#Transform()<CR>
autocmd filetype php nmap gd :call phpactor#GotoDefinition()<CR>
autocmd filetype php let g:phpactorCompletionIgnoreCase = 1
autocmd filetype php nmap <Leader>mm :call phpactor#ContextMenu()<CR>

