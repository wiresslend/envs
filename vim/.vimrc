"global settings
set nocompatible
syntax on
set mouse=a
set hidden                  "切换buffer时自动保存
set clipboard=unnamed       "将系统粘贴板保存到unnamed
set ignorecase smartcase    "搜索时大小写敏感

"set tabs
set ts=4
set expandtab
set autoindent

"cursorline
set cursorline
highlight CursorLine term=bold cterm=bold ctermbg=234

"line number
set nu
set relativenumber

"自动检测文件类型, 适配缩进
filetype plugin indent on

" Plugins
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'ludovicchabant/vim-gutentags'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'connorholyday/vim-snazzy'
Plug 'Valloric/YouCompleteMe'
call plug#end()

"Plug setting
"use rg instead of build in grep
set grepprg=rg\ --vimgrep\ --smart-case\ --follow

"youcompleteme settings
set pythondll=/dev/null
set pythonthreedll=/opt/homebrew/opt/python@3.9/Frameworks/Python.framework/Versions/3.9/lib/python3.9/config-3.9-darwin/libpython3.9.dylib

"arline setting
let g:airline_powerline_fonts = 1

"theme settings
let g:SnazzyTransparent = 1
set background=dark
set backspace=2
colorscheme snazzy
let g:lightline = {
\ 'colorscheme': 'snazzy',
\ }


"键盘映射
nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <Leader>f :Rg<CR>
nnoremap <silent> <Leader>b :Buffers<CR>
"关闭方向键
noremap <UP> <NoP>
noremap <Down> <NoP>
noremap <Left> <NoP>
noremap <Right> <NoP>
inoremap jj <esc>




