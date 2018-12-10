" ---ALE-----------------------------------------------------------------------
let g:ale_completion_enabled = 1

"let g:ale_php_phpcs_executable = 'vendor/bin/phpcs'
let g:ale_php_phpcs_standard='PSR2'
let g:ale_php_phpstan_level = '4'
let g:ale_linters = {'php': ['phpcs', 'phpstan']}
let g:ale_fixers = {
      \ 'php': ['phpcbf'],
      \ 'python': ['black']
      \ }
let g:ale_echo_msg_format = '%linter%: %s'
let g:ale_lint_on_text_changed = 'never'

:ca AF ALEFix
:ca AI ALEInfo

"---CTRL-P---------------------------------------------------------------------
let g:ctrlp_user_command = ['.git/', 'git ls-files --cached --others  --exclude-standard %s']

"---PHPACTOR------------------------------------------------------------------
nmap <Leader>tt :call phpactor#Transform()<CR>
nmap gd :call phpactor#GotoDefinition()<CR>
let g:phpactorCompletionIgnoreCase = 1
nmap <Leader>mm :call phpactor#ContextMenu()<CR>
