"""""""""""""""""""""""""""""""""""""""""
" plantuml.vim
" Author: Anders Convery
"
" add plant UML support for rendering diagrams
"""""""""""""""""""""""""""""""""""""""""
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }


nmap <leader>m <Plug>MarkdownPreviewToggle

"Make markdown avaible elsewhere
" let g:mkdp_command_for_global = 1

" only update on save/leaving insert
let g:mkdp_refresh_slow = 1

" close the tab when done
let g:mkdp_auto_close = 1
