"""""""""""""""""""""""""""""""""""""""""
" TagHighlight.vim
" Author: Anders Convery
"
" Tagbased highligting
"""""""""""""""""""""""""""""""""""""""""
Plug 'kendling/TagHighlight', { 'for' : 'verilog_systemverilog' }

if ! exists('g:TagHighlightSettings')
	let g:TagHighlightSettings = {}
endif
let g:TagHighlightSettings['TagFileName'] = 'tagfile'
let g:TagHighlightSettings['CtagsExecutable'] = 'ctags.exe'

let g:TagHighlightSettings['DoNotGenerateTags'] = 'True'
let g:TagHighlightSettings['DisableStandardLibraries'] = 'True'
let g:TagHighlightSettings['DisableTagManager'] = 'True'

" Link the Ctag names to helpful colours
highlight link CTagsClass Type
highlight link CTagsDefinedName Constant
highlight link CTagsEnumerator Type
highlight link CTagsFunction Function
highlight link CTagsEnumeratorName Constant
highlight link CTagsMember Identifier
highlight link CTagsStructure Type
highlight link CTagsType Identifier
highlight link CTagsRegisterType Identifier
highlight link CTagsUnion Type
highlight link CTagsGlobalVarible Special
highlight link CTagsGlobalConstant Constant
highlight link CTagsLocalVarible Special
"For a purple hint
highlight link CTagsTask helpVim

function! SetTagLocation()
	if exists ("b:gutentags_files['ctags']")
		let tags_file = b:gutentags_files['ctags']
		let tags_path = fnamemodify(tags_file, ':h')
		let tags_fname = fnamemodify(tags_file, ':t')
		let g:TagHighlightSettings['TagFileDirectory'] = tags_path
		let g:TagHighlightSettings['TagFileName'] = tags_fname
		let g:TagHighlightSettings['TypesFileDirectory'] = tags_path."/types_hl"
		let g:TagHighlightSettings['TypesFilePrefix'] = fnamemodify(tags_fname, ':r')
		call TagHighlight#ReadTypes#ReadTypesByFileType()
	endif
endfunction

autocmd BufEnter *.sv :call SetTagLocation()

"Setup the key binding
map <F11> <ESC> :UpdateTypesFile<CR> <bar> :echo "Done" <CR>
