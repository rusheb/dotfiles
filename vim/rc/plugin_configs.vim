" ---ALE-----------------------------------------------------------------------
let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1

"let g:ale_php_phpcs_executable = 'vendor/bin/phpcs'
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
      \ 'python': []
      \ }
let g:ale_echo_msg_format = '%linter%: %s'
let g:ale_lint_on_text_changed = 'never'

:ca AF ALEFix
:ca AI ALEInfo

"---BLACK----------------------------------------------------------------------
autocmd BufWritePre *.py execute ':Black'

"---CTRL-P---------------------------------------------------------------------
let g:ctrlp_user_command = ['.git/', 'git ls-files --cached --others  --exclude-standard %s']

"---PHPACTOR------------------------------------------------------------------
autocmd filetype php nmap <Leader>tt :call phpactor#Transform()<CR>
autocmd filetype php nmap gd :call phpactor#GotoDefinition()<CR>
autocmd filetype php let g:phpactorCompletionIgnoreCase = 1
autocmd filetype php nmap <Leader>mm :call phpactor#ContextMenu()<CR>

"---JEDI----------------------------------------------------------------------
autocmd filetype python let g:jedi#goto_definitions_command = "gd"
"
"---LIVEDOWN------------------------------------------------------------------
nmap gm :LivedownToggle<CR>
