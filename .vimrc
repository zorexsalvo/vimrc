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

call plug#end()

"Give a shortcut key to NERD Tree"
map <F2> :NERDTreeToggle<CR>
map <F3> :vim-indent-guide<CR>

autocmd BufRead *.py setlocal colorcolumn=0
autocmd Filetype html setlocal ts=2 sw=2 sts=2 et
