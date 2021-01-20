"""""""""""""""""""""""""""""""""""""""""
" python_ide.vim
" Author: Anders Convery
"
" setup for using jupyter in neovim for python development
"""""""""""""""""""""""""""""""""""""""""

Plug 'bfredl/nvim-ipy'

let g:nvim_ipy_perform_mappings = 0

map <silent> <leader>t  <Plug>(IPy-Run)
map <silent> <leader>tt <Plug>(IPy-RunAll)
map <silent> <leader><C-t> <Plug>(IPy-Interrupt)
map <silent> <leader>r :call IPyRun('')

Plug 'vim-python/python-syntax'

let g:python_highlight_all = 1
