" NOTE: this is for vim only
" for neovim, use init.vim


" Be sure to save and `source` this file
" before trying out new plugins.

" Commands like `:PlugClean`, `:PlugInstall`
" are run within vim.



" Using Plug as opposed to vundle or pathogen
" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

call plug#end()

" set nonumber relativenumber
set number " preference changed

" To set indentation as spaces
set tabstop=2
set expandtab
set shiftwidth=2

let NERDTreeShowHidden=1

set mouse=a
