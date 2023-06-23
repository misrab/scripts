" this is for neovim
" it is usually found here: ~/.config/nvim/init.vim

" Using nvim 0.3.8
" Higher versions had issue with clipboard

" Requires vim-plug to be installed


" Plugins will be downloaded under the specified directory.
" call plug#begin()
call plug#begin('~/.config/nvim/plugged')


" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
"Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'jacoborus/tender'
Plug 'leafoftree/vim-vue-plugin'
Plug 'ludovicchabant/vim-gutentags'
Plug 'elixir-editors/vim-elixir'
Plug 'cespare/vim-toml'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" set nonumber relativenumber
set number


" To set indentation as spaces
set shiftwidth=2
set tabstop=2
set expandtab



set background=dark
colorscheme tender 
syntax on

" " Copy to clipboard
vnoremap  <leader>y  "+y
" as a reminder, you <leader> is \

" unhighlight searches on escape
nnoremap <esc> :noh<return><esc>

" Avoid annoying vim-go warning for Vim < 0.4.0
let g:go_version_warning = 0

" NERDTree on startup, from https://stackoverflow.com/questions/1447334/how-to-add-nerdtree-to-your-vimrc
" autocmd VimEnter * NERDTree
" don't close nerdtree when opening a file
let g:NERDTreeQuitOnOpen = 0
" To allow NERDTree to delete files etc.
set modifiable
set mouse=a
