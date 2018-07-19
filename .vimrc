set nocp

" Ansible vim config
"let g:ansible_unindent_after_newline = 1
let g:ansible_attribute_highlight = "ob"
let g:ansible_name_highlight = 'd'
let g:ansible_extra_keywords_highlight = 1
let g:ansible_normal_keywords_highlight = 'Constant'
let g:ansible_with_keywords_highlight = 'Constant'
let g:ansible_yamlKeyName = 'yamlKey'

call plug#begin('~/.vim/plugged')
" Normal plug
"Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" ansible-vim-plug
Plug 'pearofducks/ansible-vim'
Plug 'altercation/vim-colors-solarized'
Plug 'stephpy/vim-yaml'
call plug#end()

filetype plugin indent on
syntax on
let g:solarized_termcolors=256
set background=dark
colorscheme solarized
set ai
set si
set is
set wildmenu

" Auto remove extra spaces
autocmd BufWritePre *.py :%s/\s\+$//e

" If python use set ts=8 et sw=4 sts=4
autocmd BufNewFile,BufRead *.py set ts=8 et sw=4 sts=4

"KEY BINDING
"Key bind ,ne - NERDTree
let mapleader = ","
nmap <leader>ne :NERDTree<cr>
noremap <F4> :set hlsearch! hlsearch?<CR>

" powerline
" comment those if not install powerline
set laststatus=2
set t_Co=256
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

