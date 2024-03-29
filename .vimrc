" Map F6 to tab previous
map <F6> :tabp<CR>

" Map F7 to tab next
map <F7> :tabn<CR>

set smartindent

" Set the tab width to two characters wide
set tabstop=2

" Two spaces wide for reindent operations (>> and <<)
set shiftwidth=2

" Use spaces as tabs
set expandtab

set relativenumber 
set number

" Always display the status line, even if only one window is displayed
set laststatus=2

"Enable useful vim functionality
set nocompatible

"Turn on syntax highlighting
syntax on

"search case-insensitive when all lower case
set ignorecase
set smartcase

"enable search while you type
set incsearch

"Remove Ex mode
nmap Q <Nop>

" Try to prevent bad habits like using the arrow keys for movement. This is
" not the only possible bad habit. For example, holding down the h/j/k/l keys
" for movement, rather than using more efficient movement commands, is also a
" bad habit. The former is enforceable through a .vimrc, while we don't know
" how to prevent the latter.
" Do this in normal mode...
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

" Add clang-format binding
map <C-K> :py3f ~/clang-format.py<cr>

" git clone https://github.com/preservim/nerdtree.git at ~/.vim/pack/vendor/start/
" Add nerdtree binding 
map <C-n> :NERDTreeToggle<cr>

" Set ctags file
set tags=./tags,tags;$HOME

command Cmnt 0norm i//

set runtimepath^=~/.vim/bundle/ctrlp.vim

fu! Formatonsave()
  let l:formatdiff = 1
  py3f ~/clang-format.py
endfunction
autocmd BufWritePre *.h,*.c,*.cpp call Formatonsave()

