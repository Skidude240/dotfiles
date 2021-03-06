"""""""""""""""""""""""""""""""""""""""""
" ctags.vim
" Author: Rui Pinheiro
"
" ctags configuration
"""""""""""""""""""""""""""""""""""""""""

"""""""
" Set tags search path
" ';' means upward search (i.e. ./.tags, ../.tags, ../../.tags etc)
set tags=.tags;

"""""""
" Automatic ctags
" Requires ctags installation (e.g. universal-ctags)
Plug 'ludovicchabant/vim-gutentags'

" Use '.tags' to avoid polluting the directory listing
let g:gutentags_ctags_tagfile = '.tags'

" Use cache dir to avoid pollution everything with tags
let g:gutentags_cache_dir = '~/.vim/tags'

" Don't start gutentags on a gitcommit
let g:gutentags_exclude_filetypes = ['gitcommit']

" Set project roots
let g:gutentags_project_root  = ['.p4config', '.gentags']

" extract more information about the classes and heirachy
let g:gutentags_ctags_extra_args = ['--extras=+q', '--fields=+i' ]

" Only updates tags on a write
let g:gutentags_generate_on_missing = 0
let g:gutentags_generate_on_new = 0
let g:gutentags_generate_on_empty_buffer = 0

"""""""
" Tagbar
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }

" Configuration
nmap <F4> :TagbarToggle<CR>
