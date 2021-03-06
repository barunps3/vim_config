set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-markdown'
Plugin 'Yggdroot/indentLine'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin on
filetype plugin indent on
autocmd FileType yml,yaml setlocal ts=2 sts=2 sw=2 expandtab
" Space + g for seeing the go ot definitions
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
" Allow highlighting
let python_highlight_all=1
" Set Syntax highlighting
syntax on

" Set Auto-indent
" set smartindent

" Set Line Numbering
set number

" Colorscheme
colorscheme sublimemonokai
let g:sublimemonokai_term_italic = 1
" Set encoding
set encoding=utf-8
" Set indentline
let g:indentLine_char = '⦙'

" Set splitting 
set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-O> :NERDTreeToggle<CR>
