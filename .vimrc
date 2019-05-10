syntax on

set nocompatible
set relativenumber number
set autoindent
set ruler
set undolevels=1000
set smartindent
set showcmd
set colorcolumn=80

map <Up> <Nop>
map <Down> <Nop>
map <Left> <Nop>
map <Right> <Nop>


set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#303000
highlight ColorColumn guibg=#253340

imap <Up> <Nop>
imap <Down> <Nop>
imap <Left> <Nop>
imap <Right> <Nop>

map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>
