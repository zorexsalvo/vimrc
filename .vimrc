"Always show line numbers
set number

"Disable line wrap!
set wrap!

"Set 4 spaces by default
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

"Set highlight for trailing whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

"Ignore compiled files
let NERDTreeIgnore = ['\.pyc$']
let g:indentLine_leadingSpaceChar = '·'
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_color_term = 239
let g:ycm_server_python_interpreter = '/usr/bin/python'
let g:ctrlp_custom_ignore = 'node_modules'

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

call plug#end()

"Give a shortcut key to NERD Tree"
map <F2> :NERDTreeToggle<CR>
map <F8> :TagbarToggle<CR>

autocmd BufRead *.py setlocal colorcolumn=0
autocmd Filetype html setlocal ts=2 sw=2 sts=2 et

set background=dark
