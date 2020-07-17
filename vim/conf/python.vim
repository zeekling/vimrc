"autocmd FileType python set omnifunc=pythoncomplete#Complete
let g:pydiction_location = '~/.vim/plugged/pydiction/complete-dict'
autocmd FileType python setlocal completeopt-=preview
let g:jedi#completions_command = "<C-Space>"
set cc=120
" set cc=79
let g:pymode_python = 'python3'
" Pylint configuration file
let g:pymode_lint_config = '$HOME/pylint.rc'
let g:pymode_options_max_line_length = 120
