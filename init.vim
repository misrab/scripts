" this is for neovim
" it is usually found here: ~/.config/nvim/init.vim

" Using nvim 0.3.8
" Higher versions had issue with clipboard

" Requires vim-plug to be installed


" Plugins will be downloaded under the specified directory.
call plug#begin()

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
"Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'jacoborus/tender'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" set nonumber relativenumber
set number


" To set indentation as spaces
set shiftwidth=2
set tabstop=2
set expandtab

" To allow NERDTree to delete files etc.
set modifiable
set mouse=a


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

