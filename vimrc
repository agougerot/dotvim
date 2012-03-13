" Pathogen loading
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Auto-indent activation
set autoindent

" Redefine tabulation
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=8

" File type autodetection
filetype on
filetype plugin indent on

" Max length line
set textwidth=79

" Colored syntax
syntax on

" Global shortkeys
execute 'source ' . $HOME . '/.vim/shortkeys.vim'

" Enabling completion for python files
au FileType python set omnifunc=pythoncomplete#Complete

" Enabling completion for JS files
au FileType javascript set omnifunc=javascriptcomplete#CompleteJS

" Enabling completion for html files
au FileType html set omnifunc=htmlcomplete#CompleteTags

" Enabling completion for CSS files
au FileType css set omnifunc=csscomplete#CompleteCSS

" SuperTab completion
let g:SuperTabDefaultCompletionType = "context"

" Enabling doc preview
set completeopt=menuone,longest,preview

" Django completion
function! SetAutoDjangoCompletion()
    let l:tmpPath = split($PWD, '/')
    let l:djangoVar = tmpPath[len(tmpPath)-1].'.settings'
    let $DJANGO_SETTINGS_MODULE=djangoVar
    echo 'Django completion module activated : '.djangoVar
    return 1
endfunction

" Librairies in virtualenv completion
py << EOF
imort os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

