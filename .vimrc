set encoding=utf8
set guifont=DroidSansMono\ Nerd\ Font\ 11

"Always show line numbers
set number

"Disable line wrap!
set wrap!

"Set 4 spaces by default
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

"Set 2 spaces on html, js, json
autocmd Filetype html setlocal ts=2 sw=2 expandtab smarttab
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab smarttab
autocmd Filetype json setlocal ts=2 sw=2 expandtab smarttab
autocmd Filetype vue setlocal ts=2 sw=2 expandtab smarttab

"Set highlight for trailing whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

"Ignore compiled files
let NERDTreeIgnore = ['\.pyc$', 'venv$']
let g:indentLine_leadingSpaceChar = '·'
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_color_term = 239
let g:ycm_server_python_interpreter = '/usr/bin/python'
let g:ctrlp_custom_ignore = 'node_modules\|venv'
let g:webdevicons_conceal_nerdtree_brackets = 0
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {}
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['vue'] = 'V'

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'scrooloose/nerdcommenter'

Plug 'airblade/vim-gitgutter'

Plug 'tpope/vim-surround'

Plug 'kien/ctrlp.vim'

Plug 'mattn/emmet-vim'

Plug 'altercation/vim-colors-solarized'

Plug 'bling/vim-airline'

Plug 'nathanaelkane/vim-indent-guides'

Plug 'Valloric/MatchTagAlways'

Plug 'majutsushi/tagbar'

Plug 'Yggdroot/indentLine'

Plug 'posva/vim-vue'

Plug 'Valloric/YouCompleteMe'

Plug 'pangloss/vim-javascript'

Plug 'othree/html5.vim'

Plug 'hail2u/vim-css3-syntax'

Plug 'ryanoasis/vim-devicons'

" Fuzzy finder plugin
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()

"Give a shortcut key to NERD Tree"
map <F2> :NERDTreeToggle<CR>
map <F8> :TagbarToggle<CR>

autocmd BufRead *.py setlocal colorcolumn=0
autocmd Filetype html setlocal ts=2 sw=2 sts=2 et

set fillchars+=vert:\ 
set background=dark

" FZF remap
nnoremap <F2> :FZF <return>
" Remap Splits
" Move to down split
nnoremap <S-J> <C-W><C-J>
" Move to Top Split
nnoremap <S-K> <C-W><C-K>
" Move to right split
nnoremap <S-L> <C-W><C-L>
" Move to left split
nnoremap <S-H> <C-W><C-H>
