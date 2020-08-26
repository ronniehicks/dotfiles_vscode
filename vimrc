set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin indent on    " required

" theme
" ----
syntax on
colorscheme codedark
" ----
" End theme

" Airline
let g:airline_theme='codedark'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Always show statusline
" ------
set laststatus=2
" ------

" Set line number
set number

" Nerdtree Settings
set mouse=a
autocmd VimEnter * NERDTree | wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
set ttyfast
set lazyredraw
map tt :NERDTreeToggle<CR> "double click t button to toggle NerdTree
map [] :TagbarToggle<CR> "click [] to toggle Tagbar

"---------------------
" Local customizations
"---------------------

" local customizations in ~/.vimrc.local
let $LOCALFILE=expand("~/.vimrc.local")
if filereadable($LOCALFILE)
    source $LOCALFILE
endif
