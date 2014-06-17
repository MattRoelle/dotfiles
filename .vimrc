" Vundle
  set nocompatible
  filetype off
  set rtp+=~/.vim/bundle/vundle/
  call vundle#rc()
  Bundle 'gmarik/vundle'

" plugins
  Bundle 'kien/ctrlp.vim'
  Bundle 'scrooloose/nerdtree'
  Bundle 'Valloric/YouCompleteMe'
  Bundle 'Valloric/MatchTagAlways'
  Bundle 'othree/javascript-libraries-syntax.vim'
  Bundle 'othree/html5.vim'
  Bundle 'bling/vim-airline'
  Bundle 'tpope/vim-fireplace'
  Bundle 'sjl/gundo.vim'
  Bundle 'flazz/vim-colorschemes'
  filetype on

" enable php filetype for MTA
  let g:mta_filetypes = { 'html' : 1, 'xhtml' : 1, 'xml' : 1, 'jinja' : 1, 'php' : 1 } 

" airline
  set nolazyredraw
  set laststatus=2
  function! AirlineInit()
    let g:airline_section_y = airline#section#create(['ffenc', ' | %{strftime("%H:%M")}'])
  endfunction
  autocmd VimEnter * call AirlineInit()

" nerd tree
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
  map <C-r> :NERDTreeToggle<CR>

" gundo
  map <Leader>u :GundoToggle<CR>
  let g:gundo_close_on_revert = 1

" colors
  set t_Co=256
  colorscheme jellybeans
  highlight Normal ctermbg=NONE
  highlight nonText ctermbg=NONE
  syntax on

" indentation
  set expandtab
  set shiftwidth=2
  set softtabstop=2
  set smartindent
  filetype indent on

" folding
  set foldmethod=indent
  set foldlevelstart=99
  set foldminlines=0
  set foldignore=""
  nnoremap <cr> za

" mapping
    let mapleader = ","
  " I tend to accidentally hit `jj` in every text application ever
    inoremap jj <ESC>
  " buffers
    noremap <C-q> :bd!<CR>
    noremap <C-w> :bp!<CR>
    noremap <C-e> :bn!<CR>
  " split navigation
    nnoremap <C-h> <C-w>h
    nnoremap <C-j> <C-w>j
    nnoremap <C-k> <C-w>k
    nnoremap <C-l> <C-w>l
  " better indentation
    vnoremap > >gv
    vnoremap < <gv
  " improve wrapped lines navigation
    nnoremap j gj
    nnoremap k gk
  " file saving
    nnoremap <Leader>f :w!<CR>
  " select all
    noremap <Leader>a ggVG
  " map Q to latest recoreded macro
    noremap Q @@
  " drag lines vertically
    noremap <C-j> :m+<CR>
    noremap <C-k> :m-2<CR>
    inoremap <C-j> <Esc>:m+<CR>
    inoremap <C-k> <Esc>:m-2<CR>
    vnoremap <C-j> :m'>+<CR>gv
    vnoremap <C-k> :m-2<CR>gv

" misc
  set number
  set hlsearch
  set backspace=2
