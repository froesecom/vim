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
Plug 'w0rp/ale'
Plug 'Quramy/tsuquyomi'
Plug 'pangloss/vim-javascript'
Plug 'Quramy/vim-js-pretty-template'
Plug 'ianks/vim-tsx'
Plug 'mxw/vim-jsx'
Plug 'Valloric/YouCompleteMe'
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
autocmd FileType ruby autocmd BufWritePre <buffer> %s/\s\+$//e

" Allow opening of new tabs in Ripgrep
autocmd FileType qf nnoremap <buffer> <C-T> <C-W><Enter><C-W>T

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

" JS Stuff
" vim js pretty template strings
au FileType typescript setl sw=2 sts=2 et
autocmd FileType typescript JsPreTmpl html
autocmd FileType typescript syn clear foldBraces
" Ale Fixers
let g:ale_fixers = {
\   'typescript': ['prettier', 'tslint'],
\   'scss'      : ['stylelint']
\}
nmap <silent> <C-k> <Plug>(ale_previous)
nmap <silent> <C-j> <Plug>(ale_next)
let g:ale_typescript_tslint_use_global = 0
let g:ale_typescript_tslint_config_path = './tslint.json'
let g:ale_lint_on_text_changed = 'never' 
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 0
highlight ALEError ctermbg=Red
highlight ALEError ctermfg=Black
highlight YcmErrorSection ctermbg=Red
highlight YcmErrorSection ctermfg=Black
autocmd FileType typescript JsPreTmpl html
autocmd FileType typescript syn clear foldBraces

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
function ShowSpaces(...)
  let @/='\v(\s+$)|( +\ze\t)'
  let oldhlsearch=&hlsearch
  if !a:0
    let &hlsearch=!&hlsearch
  else
    let &hlsearch=a:1
  end
  return oldhlsearch
endfunction

command -bar -nargs=? ShowSpaces call ShowSpaces(<args>)
nnoremap <F12>     :ShowSpaces 1<CR>
