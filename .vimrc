"neobundle
set nocompatible
filetype off

if has('vim_starting')
	set rtp+=$HOME/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'
call neobundle#end()

NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/vimproc.vim'
NeoBundle 'osyo-manga/vim-marching'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'tyru/caw.vim'

NeoBundleLazy 'vim-jp/cpp-vim', {
	\ 'autoload' : {'filetypes' : 'cpp'}
	\}

filetype plugin indent on



"neocomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#skip_auto_completion_time = ""

if !exists('g:neocomplete#force_omni_input_patterns')
	let g:neocomplete#force_omni_input_patterns = {}
endif

let g:neocomplete#force_omni_input_patterns.cpp = 
\ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'



"marching
let g:marching_enable_neocomplete = 1



"quickrun
let g:quickrun_config={
\	"cpp" : {
\		"cmdopt" : "-std=c++14",
\	},
\}



"path
setlocal path+=/mingw64/include
setlocal path+=/mingw64/include/c++/4.9.2



"general
syntax on
set number
set tabstop=2
set shiftwidth=2
set scrolloff=999
set smartindent
set title
set cursorline
set ruler
set laststatus=2
set incsearch

colorscheme darkblue

set backspace=indent,eol,start



