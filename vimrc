execute pathogen#infect()
Helptags

syntax on
filetype plugin indent on
set t_Co=256
colorscheme Tomorrow-Night-Eighties

:set expandtab
:set tabstop=2
:set shiftwidth=2
:set number
:set laststatus=2
:set incsearch
:set scrolljump=35
:set cursorline
":set clipboard=unnamed
:set omnifunc=csscomplete#CompleteCSS
autocmd BufNewFile,BufRead *.scss          set ft=scss.css


au Filetype html,xml,erb source ~/.vim/scripts/wrapwithtag.vim
nnoremap <leader>n :NERDTree ~/Sites<CR>
nnoremap <leader>r :NERDTreeFind<CR>
nnoremap <leader>; 02Wdv$i

noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>

:set wildignore+=*/tmp/*,*.so,*.swp,*.zip

let g:html_indent_tags = 'p\|li\|nav'
