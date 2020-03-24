syntax on
set nu
set tabstop=4
set shiftwidth=4
set colorcolumn=81
set autoindent
set smartindent




"You'll need to install plug vim first
"curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin()

"a universal set of defaults that everyone can agree on.
Plug 'tpope/vim-sensible'

"File management
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'

"Improved C syntax color
Plug 'justinmk/vim-syntax-extra'
"Header for 42
Plug 'pbondoer/vim-42header'

"Python intellisense engine autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"VIM neo-completion and remap of navigation
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"

"Surround.vim is all about surroundings: parentheses, brackets, quotes,..
Plug 'tpope/vim-surround'

"Vim motions on speed! 
Plug 'easymotion/vim-easymotion'
map <Leader> <Plug>(easymotion-prefix)

"lean & mean status/tabline for vim that's light as air
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Vim theme, really dope
Plug 'sonph/onehalf', {'rtp': 'vim/'}

"provides an overview of the structure of source code files 
Plug 'vim-scripts/taglist.vim'

"Rainbow Parentheses
Plug 'frazrepo/vim-rainbow'

"Allow to comment selected text
Plug 'preservim/nerdcommenter'

"Insert or delete brackets, parens, quotes in pair.
Plug 'jiangmiao/auto-pairs'

"Run your favorite search tool from Vim, with an enhanced results list.
Plug 'mileszs/ack.vim'

"Multiple cursor support
Plug 'terryma/vim-multiple-cursors'

"Show git modifs next to line numbers
Plug 'airblade/vim-gitgutter'

"Can use :Git commands in vim
Plug 'tpope/vim-fugitive'

"Seems cool, need to better understand
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'

call plug#end()




set t_Co=256
set cursorline
colorscheme onehalfdark

let g:rainbow_active = 1
let g:airline_theme='onehalfdark'
let g:airline_extensions = []
" lightline
" let g:lightline.colorscheme='onehalfdark'
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l










