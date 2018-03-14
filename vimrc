call plug#begin('~/.config/vim/plugged')
Plug 'jremmen/vim-ripgrep'
Plug 'kien/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'rstacruz/sparkup'
Plug 'Townk/vim-autoclose'
Plug 'digitaltoad/vim-pug'
Plug 'isRuslan/vim-es6'
Plug 'leafgarland/typescript-vim'
Plug 'tpope/vim-rails'
call plug#end()

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
:set clipboard=unnamedplus
:set noeb vb t_vb= "no bloopy noises"
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

nnoremap <leader>e i<%=  %><Esc>F=la
nnoremap <leader>w i<%  %><Esc>hhha

" Ignore files and folders in Ctrl+P
:set wildignore+=*/tmp/*,*/node_modules/*,*.so,*.swp,*.zip

let g:html_indent_tags = 'p\|li\|nav'

" Remap jk to save and exit insert mode
" :imap jk <Esc>:w<CR>
" Remap :W to :w
:command W w
if executable('rg')
  set grepprg=rg\ --color=never
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  let g:ctrlp_use_caching = 0
endif

" :set timeout timeoutlen=150
