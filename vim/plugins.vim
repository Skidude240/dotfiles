"""""""""""""""""""""""""""""""""""""""""
" plugins.vim
" Author: Rui Pinheiro
"
" Loads and configures plugins
"""""""""""""""""""""""""""""""""""""""""

if has('nvim')
	call plug#begin('~/.config/nvim/plugged')
else
	call plug#begin('~/.vim/plugged')
endif
	"""""""""""
	" Plugins with separate configuration

	" Vim theme, color, etc
	call SourceDotfile('theme.vim')

	" Vim-airline
	call SourceDotfile('plugins/airline.vim')

	" Autocomplete
	call SourceDotfile('plugins/autocomplete.vim')

	" NERDTree
	if !exists("g:gui_oni") && (has('nvim') || v:version >= 704)
		call SourceDotfile('plugins/nerdtree.vim')
	endif

	" Fold
	call SourceDotfile('plugins/fold.vim')

	" System Verilog highligting
	call SourceDotfile('plugins/system_verilog.vim')

	" indentLine
	call SourceDotfile('plugins/indentline.vim')

	" EasyAlign
	call SourceDotfile('plugins/easyalign.vim')

	" Fzf fuzzy finder
	call SourceDotfile('plugins/fzf.vim')

	" Auto pairs
	call SourceDotfile('plugins/auto-pairs.vim')

	" Bufkill
	call SourceDotfile('plugins/bufkill.vim')

	" Rainbow Parentheses
	call SourceDotfile('plugins/rainbow.vim')

	" Matchit
	call SourceDotfile('plugins/matchit.vim')

	" Undotree
	call SourceDotfile('plugins/undotree.vim')

	" Ctags
	if has('nvim') || v:version >= 704
		call SourceDotfile('plugins/ctags.vim')
	endif

	" vim-json: Better JSON formatting
	call SourceDotfile('plugins/json.vim')

	" Gitgutter: Shows signs for added, modifed, removed lines in current git repo
	call SourceDotfile('plugins/gitgutter.vim')

        " Tex
        call SourceDotfile('plugins/tex.vim')

	"""""""""""""""
	" Other plugins

	" Vim-Signature: Show marks
	Plug 'kshenoy/vim-signature' "Show marks

	" Vim-Easymotion: Faster motions
	"Plug 'easymotion/vim-easymotion'

	" Vim-autoread: Reload files when they change on disk
	Plug 'djoshea/vim-autoread'

	" Bufexplorer: Easily navigate buffers using \be, \bv, \bs
	if has('nvim') || v:version >= 703
		Plug 'jlanzarotta/bufexplorer'
	endif

	" Adds XtermColorTable command to list all available terminal colors
	Plug 'guns/xterm-color-table.vim'

	" i3 status syntax
	"Plug 'PotatoesMaster/i3-vim-syntax', { 'for': 'vim' }

	" Tmux syntax highlighting
	Plug 'tmux-plugins/vim-tmux', { 'for': 'tmux' }

	" Vim-DevIcons: Adds a lot more icons to vim (e.g. NerdTree file types)
	" NOTE: Requires a "Nerd Font" (i.e. patched font), from https://github.com/ryanoasis/nerd-fonts
	Plug 'ryanoasis/vim-devicons'

	" Vim-Minimap
	" NOTE: Requires Braille glyph support
	Plug 'severin-lemaignan/vim-minimap', { 'on': ['Minimap'] }

	" HiLinkTrace - debug highlight groups using :HLT
	Plug 'gerw/vim-HiLinkTrace', { 'on': ['HLT', 'HLT!'] }

	" Abolish.vim: working with variants of a word
	" See github for examples, but I use it for %S (case-aware substitution)
	Plug 'tpope/vim-abolish'

	" commentary.vim: Adds the 'gc' mappings to comment/uncomment code automatically
	Plug 'tpope/vim-commentary'

	" vc.vim: VCS commands
	Plug 'juneedahamed/vc.vim'


call plug#end()
