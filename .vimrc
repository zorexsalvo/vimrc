"Always show line numbers
set number

"Disable line wrap!
set wrap!

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'airblade/vim-gitgutter'

Plug 'tpope/vim-surround'

call plug#end()

"Give a shortcut key to NERD Tree"
map <F2> :NERDTreeToggle<CR>

