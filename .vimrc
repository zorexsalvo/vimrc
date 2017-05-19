"Always show line numbers
set number

"Disable line wrap!
set wrap!

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

call plug#end()

"Give a shortcut key to NERD Tree"
map <F2> :NERDTreeToggle<CR>

autocmd BufRead *.py setlocal colorcolumn=0
