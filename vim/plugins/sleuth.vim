"""""""""""""""""""""""""""""""""""""""""
" sleuth.vim
" Author: Anders Convery
"
" Sleuth Plugin for files with non standard indenting
"""""""""""""""""""""""""""""""""""""""""

" try to guess indents as some companies dont stick to one standard
Plug 'tpope/vim-sleuth'
let g:sleuth_automatic = 0

map <F7> :Sleuth<CR>
