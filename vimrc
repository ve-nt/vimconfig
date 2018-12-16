"   d     db d888888b  .88b  d88.  d8888b.  .o88b.
"   88    88   `88'    88'YbdP`88  88  `8D d8P  Y8
"   Y8    8P    88     88  88  88  88oobY' 8P
"   `8b  d8'    88     88  88  88  88`8b   8b
"db  `8bd8'    .88.    88  88  88  88 `88. Y8b  d8
"VP    YP    Y888888P  YP  YP  YP  88   YD  `Y88P'


"Vundle {{{
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

"===================================================================

Plugin 'jlanzarotta/bufexplorer'
Plugin 'scrooloose/nerdtree'
Plugin 'benmills/vimux'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'gregsexton/VimCalc'
"Plugin 'arecarn/crunch.vim'
"Plugin 'arecarn/selection.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'rust-lang/rust.vim'
Plugin 'PotatoesMaster/i3-vim-syntax'
"Plugin 'lervag/vimtex'

"===================================================================
call vundle#end()
filetype plugin indent on
"}}}

"Checkers {{{
let g:syntastic_python_python_exec = '/usr/bin/python3'
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = ' -std=c++11'
let g:syntastic_tex_checkers = ['lacheck']
let g:syntastic_java_checkers = []
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_quiet_messages = { "regex": [
		\ '\mpossible unwanted space at "{"',
		\ "invalid escape sequence",
		\ "Do not use @",
		\ "Dots should be"
		\ ]}

let g:ycm_show_diagnostics_ui = 1
let g:ycm_enable_diagnostic_highlighting = 1
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_python_binary_path = '/usr/bin/python3'
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>>'
"let g:ycm_filter_diagnostics = {
"			\ "regex": ['\mpossible unwanted space at "{"']}
"}}}

" Completion {{{
let g:ycm_show_diagnostics_ui = 0
let g:ycm_global_ymc_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
"let g:SuperTabClosePreviewOnPopupClose = 1
let g:ycm_autoclose_preview_window_after_completion=1
set completeopt-=preview
set wildmode=longest:list,full  " vim : command completion method to be like bash
set wildmenu
set splitbelow splitright
" }}}

"Programming {{{
syntax enable
set smartindent
set tabstop=4
set shiftwidth=4
"}}}

"Folds {{{
set foldmarker={{{,}}}
set foldmethod=marker
"}}}

"Searching {{{
set incsearch
"set ignorecase
set hlsearch
"set gdefault
noh
"}}}

"Copying {{{
set clipboard=unnamedplus
" }}}

"Encoding {{{
set fileencoding=utf-8
set encoding=utf-8
"}}}

"Window {{{
"set winheight=15
"set winminheight=15
"set winheight=999
let g:VimuxOrientation = "h"
let g:VimuxHeight = "34"
"}}}

"{{{ File Managing
let g:NERDTreeMinimalUI = 1
"}}}

" Visual and Interactive {{{
colorscheme zenburn
set number relativenumber
set mouse=a
set showmatch
set virtualedit=block
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set laststatus=2
set noshowmode

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_theme='minimalist'
let g:airline_symbols.linenr='L'
let g:airline_symbols.maxlinenr=' C'
let g:airline_section_y=''
"}}}

"Mappings {{{
set ttimeoutlen=10

nmap ; 	:
nmap ,t :NERDTreeToggle<CR>
nmap ,b :BufExplorer<CR>
nmap ,s :SyntasticToggleMode<CR>
nmap ,, :VimuxInterruptRunner<CR>
nmap ,d :set completeopt+=preview<CR>
nmap ,D :set completeopt-=preview<CR>
nmap ,n :set number relativenumber<CR>
nmap ,N :set number norelativenumber<CR>

nmap ,m :VimuxInterruptRunner<CR>:VimuxRunCommand("clear && make")<CR>
nmap ,l :VimuxRunCommand("zathura main.pdf &>/dev/null &")<CR>
nmap ,x :VimuxInterruptRunner<CR>:VimuxRunCommand("quit")<CR>
nmap ,v :VimuxInterruptRunner<CR>:VimuxRunLastCommand<CR>
"}}}

" Filetype {{{

" Python
autocmd Filetype python nmap ,m :VimuxInterruptRunner<CR>:VimuxRunCommand("clear && python3 " . bufname("%"))<CR>

" Bash
autocmd Filetype sh nmap ,m :VimuxInterruptRunner<CR>:VimuxRunCommand("clear && bash " . bufname("%"))<CR>

" Rust
let g:ycm_rust_src_path = '/usr/src/rustc-1.30.0/src'
autocmd Filetype rust nmap ,m :VimuxInterruptRunner<CR>:VimuxRunCommand("clear && cargo run")<CR>

" LaTeX
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:tex_comment_nospell=1

autocmd Filetype tex let g:VimuxRunnerType='window'
autocmd Filetype tex setlocal foldmarker=%{{{,%}}}
autocmd Filetype tex setlocal spell spelllang=en_gb
autocmd Filetype tex syntax spell toplevel
"}}}
