"""""""""""""""""""""""""""""""""""""""""
" tex.vim
" Author: Rui Pinheiro
"
" Loads and configures plugins for tex related work
"""""""""""""""""""""""""""""""""""""""""

" Install Tex view but lazy load
Plug 'donRaphaco/neotex', { 'for': 'tex' }

" Setup tex complier
let g:tex_flavor = 'latex'
