execute pathogen#infect()
Helptags

syntax on
filetype plugin indent on
set t_Co=256
colorscheme Tomorrow-Night-Eighties

:set synmaxcol=300
:set expandtab
:set tabstop=2
:set shiftwidth=2
:set number
:set laststatus=2
:set incsearch
:set scrolljump=20
:set cursorline
:set omnifunc=csscomplete#CompleteCSS
":set formatoptions-=cro
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
autocmd BufNewFile,BufRead *.scss       set ft=scss.css

" Remap leader key to space
let mapleader = "\<space>"
" NerdTree bindings
nnoremap <leader>n :NERDTree ~/dev<CR>
nnoremap <leader>r :NERDTreeFind<CR>
" Delete value of CSS property
nnoremap <leader>; 02Wdv$i
" Alphabetically Sort within {
nnoremap <leader>s vi{:sort<CR>

nnoremap <leader>e i<%=   %><Esc>F=la

" Ignore files and folders in Ctrl+P
:set wildignore+=*/tmp/*,*/node_modules/*,*.so,*.swp,*.zip

let g:html_indent_tags = 'p\|li\|nav'

" Remap jk to save and exit insert mode
" :imap jk <Esc>:w<CR>
" Remap :W to :w
:command W w

" :set timeout timeoutlen=150
