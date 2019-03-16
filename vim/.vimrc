" This is my .vimrc file by Soeren Erichsen

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %


" Better copy & past
set pastetoggle=<F2>
set clipboard=unnamed

"Rebind <Leader> key
let mapleader = ","


" Quicksave command
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>


"Quick quit command
noremap <Leader>e :quit<CR> "Quit current window
noremap <Leader>E :qa!<CR>  "Quit all windows

" bind Ctrl+<movement> keys to move around the windows, instead of using  Ctrl w + j
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" map sort function to a key
vnoremap <Leader>s :sort<CR>

" easier moving of code blocks to the left and right 
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation 

" Show line numbers and length
set number " show line number
set tw=79  " width of document (used by gd)
set nowrap " dont automatically wrap on load
set fo-=t  " dont automatically wrap text when typing
set colorcolumn=80
highlight ColorColumn ctermbg=233


" Make search case insensitive
set hlsearch
set incsearch
set smartcase

" Setup plugin manager
call plug#begin('~/.vim/plugged')
Plug '~/.fzf/plugin/fzf.vim' 
Plug 'https://github.com/scrooloose/nerdtree.git'
call plug#end()

" Set key mapping for fzf
" nmap <Leader>F :Files<CR>

" Set key mapping to open nerdTree
map <C-n> :NERDTreeToggle<CR>

" Set Color scheme
"syntax enable

"set background=dark
""colorscheme solarized



