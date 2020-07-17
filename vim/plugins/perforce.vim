"""""""""""""""""""""""""""""""""""""""""
" perforce.vim
" Author: Anders Convery
"
" Vim perforce intergration, disabled by default set perforce_plugin_load in
" config to get it loaded
"""""""""""""""""""""""""""""""""""""""""
if exists('g:perforce_plugin_load')
	Plug 'Skidude240/vim-vp4'

	function! P4EditBuff()
		if exists('b:P4BufInEdit')
			return
		endif

		let b:P4BufInEdit=1
		call vp4#PerforceEdit()

	endfunction

	function! P4RevertBuff()
		let needToRevert=getbufvar(expand('<afile>'), 'P4BufInEdit', 0)
		if !needToRevert
			return
		endif

		call vp4#PerforceRevertInternal(1,expand('<afile>'),'-a')

		return
	endfunction

	autocmd InsertEnter * :call P4EditBuff()
	autocmd BufUnload * :call P4RevertBuff()
endif
