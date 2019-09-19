"""""""""""""""""""""""""""""""""""""""""
" easyalign.vim
" Author: Rui Pinheiro
"
" EasyAlign plugin and related configuration
"""""""""""""""""""""""""""""""""""""""""

" Load plugin
Plug 'junegunn/vim-easy-align' ", { 'on': 'EasyAlign' }


" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Easy Align Delimiters
if !exists('g:easy_align_delimiters')
  let g:easy_align_delimiters = {}
endif

let g:easy_align_delimiters['('] = {'pattern': '('     ,'left_margin': 1, 'right_margin': 0, 'ignore_groups': ['string','comment']}
let g:easy_align_delimiters[')'] = {'pattern': ')'     ,'left_margin': 0, 'right_margin': 0, 'ignore_groups': ['string','comment']}
let g:easy_align_delimiters['{'] = {'pattern': '(\@<!{','left_margin': 1, 'right_margin': 0, 'ignore_groups': ['string','comment']}
let g:easy_align_delimiters['}'] = {'pattern': '}'     ,'left_margin': 0, 'right_margin': 0, 'ignore_groups': ['string','comment']}
let g:easy_align_delimiters['0'] = {'pattern': '-'     ,'left_margin': 1, 'right_margin': 0, 'ignore_groups': ['string','comment']}
let g:easy_align_delimiters['/'] = {'pattern': '\/\/'  ,'left_margin': 1, 'right_margin': 0, 'ignore_groups': ['string']}

" fancy verilog alligning
let g:easy_align_delimiters['i'] = {'pattern': '[inoutp]{3,4}ut\ze.*[,;]', 'left_margin': 0, 'right_margin': 1, 'ignore_groups': ['string','comment']}
