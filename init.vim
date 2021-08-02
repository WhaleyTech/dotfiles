call plug#begin('~/local/share/nvim/plugged')

" Emmet HTML helper plugin
Plug 'mattn/emmet-vim'

" General all around syntax highlighting
Plug 'sheerun/vim-polyglot'

" Svetle and Type/JavaScript syntax
Plug 'evanleck/vim-svelte'
Plug 'pangloss/vim-javascript'
Plug 'HerringtonDarkholme/yats.vim'

" Comment plugin
Plug 'preservim/nerdcommenter'

" Coc autocomplete
Plug 'neoclide/coc.nvim'
Plug 'sveltejs/language-tools'

" Prettier plugin
Plug 'prettier/vim-prettier'

" NerdTree plugin
Plug 'preservim/nerdtree'

call plug#end()

" Prettier Settings
let g:prettier#quickfix_enabled = 0
let g:prettier#autoformat_require_pragma = 0
au BufWritePre *.css,*.svelte,*.pcss,*.html,*.ts,*.js,*.json PrettierAsync

" End of prettier settings

" Emmet settings
let g:user_emmet_mode='n' "Only enable normal mode functions
let g:user_emmet_leader_key=','

let g:user_emmet_settings = {
\ 'html' : {
\     'block_all_childless' : 1,
\   }
\ }

" let g:user_emmet_
" End of emmet settings

" NerdTree Settings
nnoremap c :NERDTreeToggle<CR>

" Remap vim split switch keys
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" nnoremap <C-k> <C-w>l   ctrl-k connot be remaped while in NERDTree.
" That's why is doesn't work

" Create default mappings
"let g:NERDCreateDefaultMappings = 1

let mapleader = "\\" "This is the default leader key, pointless setting right now

set nocompatible
set showmatch
set ignorecase
set autoindent
set number
set wildmode=longest,list
syntax on
filetype plugin on

nnoremap ; :
inoremap jj <Esc>
cnoremap qq q!
cnoremap ww wq
cnoremap ee wq
vnoremap 4 $
nnoremap 4 $
vnoremap ; <Esc>
vnoremap y <BS>y
"nnoremap ,, \\cc
nmap ,,, <plug>NERDCommenterToggle
vmap ,,, <plug>NERDCommenterToggle


