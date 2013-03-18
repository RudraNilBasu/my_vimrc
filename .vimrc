"Forget being compatible with good ol' vi
set nocompatible


" Get that filetype stuff happening
filetype on
filetype plugin on
filetype indent on

" Turn on that syntax highlighting
syntax on

" Why is this not a default
set hidden

" Don't update the display while executing macros
set lazyredraw

" At least let yourself know what mode you're in
set showmode

" Enable enhanced command-line completion. Presumes you have compiled
" with +wildmenu.  See :help 'wildmenu'
set wildmenu

" Let's make it easy to edit this file (mnemonic for the key sequence is
" 'e'dit 'v'imrc)
nmap <silent> ,ev :e $MYVIMRC<cr>

" And to source this file as well (mnemonic for the key sequence is
" 's'ource 'v'imrc)
nmap <silent> ,sv :so $MYVIMRC<cr>

"Open NERDTree each time
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd w

"Open the current directory
:autocmd VimEnter * NERDTreeFind
"Toggle NerdTree with F2
nmap <silent> <F2> :NERDTreeToggle<cr>


" To keep nerd tree always on side
"let g:NERDTreeWinPos = "left"

"use double jk in insert mode to get back to normal mode
imap jk  <Esc>
nmap , <S-4>

"Mapping kj to save a file
:nmap ;; :w!<CR>
:imap ;; <Esc>:w<CR>

" op to put enter line and stay in normal mode
"nmap o o<Esc>

" oi to enter line and go in insert mode
"nmap op o

" oi to enter line and go in insert mode
nmap ;o o<Esc>

:set number
:set mouse=a

set nocp
filetype plugin on

" dont hit cw for switching between windows
noremap <silent> ,ml <C-W>l
noremap <silent> ,mk <C-W>k
noremap <silent> ,mh <C-W>h
noremap <silent> ,mj <C-W>j
"noremap <silent> ,mo <C-W>o This is not working, need to find why

" show me first pattern
:set incsearch

" Show colors
:set hlsearch

"Replace tab with space and set width =4
set tabstop=4
set shiftwidth=4
set expandtab

" unhighlight the stuff that gets highlighted by search
nmap <silent> ,/ :nohlsearch<CR>

"set color scheme
colorscheme molokai

" Never ever put single character in register
noremap x "_x

" pressing @w will encapsulate with () and stay in insert mode so that you can
" type the command to be applied to word
let @w = 'ea)bi(i'

" pressing @w will encapsulate with () and stay in insert mode so that you can
" type the command to be applied to word
let @d = 'a['''']hi'

" pressing @s will give you str() with cursor between brackets 
let @s = 'astr()ha'

" pressing @w will encapsulate with () and stay in insert mode so that you can
" type the command to be applied to word
let @g = 'elxi.get(eeei,er)i'

nmap 00 0w
nmap <F8> :TagbarToggle<CR> 

let g:molokai_original=1
set foldmethod=indent

if has('gui_running')
  set guifont=Consolas\ 10
endif
