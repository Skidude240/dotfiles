"""""""""""""""""""""""""""""""""""""""""
" misc.vim
" Author: Rui Pinheiro
"
" Miscellaneous Vim configuration/tweaks
"""""""""""""""""""""""""""""""""""""""""


" Disable automatic comments
" 'c': When exceeded certain line width
" 'r': When pressing 'Enter'
" 'o': When pressing 'o'/'O'
autocmd FileType * setlocal formatoptions-=o ""formatoptions-=c "formatoptions-=r

" Live command preview
if has('nvim')
	set inccommand=nosplit
endif

" Incremental Search
set incsearch

" Highlight all search matches
set hlsearch

" Set case insensitive searches, but use smartcsase to make it case sensitive if a captical is used
set ignorecase
set smartcase

" Use sh for shell commands and scripts (faster)
set shell=sh

" Allow opening of other files without closing buffers
set hidden

" Wild mode
set wildmode=full

" Update more often
set updatetime=1000

" When moving up/down, always keep the same column if possible
set nostartofline

" Back up files
let g:backupdir = $HOME . "/.vim/backup"
if !isdirectory(g:backupdir)
    call mkdir(g:backupdir, "p")
endif
exe 'set backupdir=' . g:backupdir . '//'
set backup

" When wrapping long lines, try to keep indent
if has("patch-7.4.354")
	set breakindent
endif

" Disable modelines
set nomodeline

" Automatically use syntax highlighting for various files
augroup filetype_paths
	au!
	au BufNewFile,BufRead gitconfig setl filetype=gitconfig
	au BufNewFile,BufRead zshrc setl filetype=zsh
	au BufNewFile,BufRead vimrc setl filetype=vim
	au BufNewFile,BufRead *.tmux setl filetype=tmux
	au BufNewFile,BufRead $DOTFILES/i3/config.d/*.conf setl filetype=i3
	au BufNewFile,BufRead */zsh/* setl filetype=zsh
augroup END

" Strip out trailing whitespace on buffer write
autocmd BufWritePre * :%s/\s\+$//e
