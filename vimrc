set nonumber relativenumber

" To set indentation as spaces
set tabstop=2
set shiftwidth=2

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'vbundles/nerdtree'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

call plug#end()
execute pathogen#infect()
call pathogen#helptags()

let NERDTreeShowHidden=1
