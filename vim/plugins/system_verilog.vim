"""""""""""""""""""""""""""""""""""""""""
" system_verilog.vim
" Author: Rui Pinheiro
"
" Verilog/System Verilog syntax highlighting
"""""""""""""""""""""""""""""""""""""""""

" Attempt to match enums and typedefs in a dirty way
let g:verilog_syntax_custom = {
	\'Statement' : [{'match' : '\<[et]_\w*\>\|\<\w*_[et]\>'}],
	\'Object' :  [{'match' : '\<uvm_\w*\>'}],
\}

" Load plugin
Plug 'vhda/verilog_systemverilog.vim'

au FileType *verilog execute ":VerilogDisableIndentAdd preproc"


" Set file types
au bufread,bufnewfile *.vh  set filetype=verilog
au bufread,bufnewfile *.mv  set filetype=verilog
au bufread,bufnewfile *.sv  set filetype=verilog_systemverilog
au bufread,bufnewfile *.svh set filetype=verilog_systemverilog


au FileType verilog_systemverilog setlocal commentstring=//%s
au FileType verilog               setlocal commentstring=//%s

