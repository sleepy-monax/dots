syntax on

set nocompatible
set relativenumber number
set autoindent
set ruler
set undolevels=1000
set smartindent
set showcmd
set colorcolumn=80
set termguicolors

set updatetime=500
set tabstop=4
set shiftwidth=4
set expandtab

" map <Up> <Nop>
" map <Down> <Nop>
" map <Left> <Nop>
" map <Right> <Nop>

set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#303000
highlight ColorColumn guibg=#253340

" imap <Up> <Nop>
" imap <Down> <Nop>
" imap <Left> <Nop>
" imap <Right> <Nop>

map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>

call plug#begin('~/.config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kshenoy/vim-signature'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'ayu-theme/ayu-vim'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

let ayucolor="dark"
colorscheme ayu

let g:indentLine_char = '|'
let g:indentLine_first_char = '|'
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0

autocmd CursorHold * silent call CocActionAsync('highlight')
nmap E :CocCommand explorer<CR>
nnoremap <Leader>f :set nomore<Bar>:ls<Bar>:set more<CR>:b<Space>
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
