call plug#begin("~/.config/nvim/plugged")
	Plug 'joshdick/onedark.vim'
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'bling/vim-airline'
	Plug 'scrooloose/nerdtree'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'
call plug#end()

" Set the default theme
source $HOME/.config/nvim/themes/onedark.vim
set notermguicolors

" Misc
set nohlsearch
set clipboard=unnamedplus
set background=dark
set number
set number
set relativenumber
set copyindent      " copy indent from the previous line
set autoindent
set noexpandtab
set tabstop=4
set softtabstop=0
set shiftwidth=4
set scrolloff=8
syntax on

imap jj <Esc>
" Autocomplete allow vim navigation
let g:deoplete#enable_at_startup = 1
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Format json files on command
com! Fjson %!python -m json.tool

autocmd BufWritePre * :%s/\s\+$//e " Remove trailing whitespaces
autocmd BufWritePre * :%s#\($\n\s*\)\+\%$##e " Remove trailing empty rows

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
