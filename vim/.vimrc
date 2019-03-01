set nocompatible
set t_BE=

" ------------ VIM PLUG------------------
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" A sensible set of defaults for vim
Plug 'tpope/vim-sensible'
" A status bar for vim
Plug 'itchyny/lightline.vim'
" Adding support for markdown
Plug 'gabrielelana/vim-markdown'
" Adding support for gitgutter
Plug 'airblade/vim-gitgutter'
"Adding support for seeing colours
Plug 'guns/xterm-color-table.vim'
"Adding support for ranger vim
Plug 'francoiscabrol/ranger.vim'
" Ending the plugin stuff
call plug#end()
" --------------------------------------

" ------------SYNTAX-SNAKEMAKE----------
au BufNewFile,BufRead Snakefile set syntax=snakemake
au BufNewFile,BufRead *.smk set syntax=snakemake

" -----------KEYBOARD NINJA------------
set pastetoggle=<F3>

" -----------SPELL CHECK--------------
highlight clear SpellBad
highlight SpellBad cterm=underline ctermfg=186

" ----------GIT GUTTER----------------
highlight GitGutterAdd ctermfg=40
highlight GitGutterChange ctermfg=220
highlight GitGutterDelete ctermfg=160
highlight GitGutterChangeDelete ctermfg=220

" ----------OTHER OPTS---------------
" Show line numbers
set number
" Dont continute comments on the next line
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro
" Easily wwitch between buffers
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

