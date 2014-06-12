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
map <M-r> :NERDTreeToggle<CR>

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
  " I tend to accidentally hit `jj` in every text application ever
  inoremap jj <ESC>
  " buffers
  noremap <M-q> :bd<CR>
  noremap <M-w> :bp<CR>
  noremap <M-e> :bn<CR>
  " split navigation
  nnoremap <C-h> <C-w>h
  nnoremap <C-j> <C-w>j
  nnoremap <C-k> <C-w>k
  nnoremap <C-l> <C-w>l
  " better indentation
  vnoremap > >gv
  vnoremap < <gv

" misc
set number
set hlsearch
set backspace=2
