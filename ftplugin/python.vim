set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set textwidth=79
set autoindent
set fileformat=unix
set shiftround

let python_highlight_all=1
syntax on

let g:syntastic_python_flake8_post_args='--ignore=E501,E128,E225,F403,W292,E402,E126,F811,F841'
let g:pep8_ignore="E501,E128,E225,F403,W292,E402,E126,F811,F841"
