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
set number

