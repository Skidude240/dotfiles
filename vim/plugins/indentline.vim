"""""""""""""""""""""""""""""""""""""""""
" indentline.vim
" Author: Rui Pinheiro
"
" indentLine plugin and related configuration
"""""""""""""""""""""""""""""""""""""""""

" Load plugin
Plug 'Yggdroot/indentLine'

" Configuration
let g:indentLine_char = '│'

" Use default conceal colors
let g:indentLine_setColors = 0

" Keep conceal value
let g:indentLine_setConceal = 0
let g:indentLine_concealcursor = ""

" Don't show the '|' for nerdtree windows or help
autocmd Filetype help IndentLinesDisable
" Something reenable the indentline i dont have time to find it atm so brute
" force the buffer to rediable on enter
autocmd Filetype nerdtree autocmd BufEnter <buffer> IndentLinesDisable
autocmd FileType nerd* IndentLinesDisable

