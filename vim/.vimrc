set nocompatible
set backspace=indent,eol,start
set t_BE=

" ------------ VIM PLUG------------------
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" A sensible set of defaults for vim
Plug 'tpope/vim-sensible'
" A status bar for vim
Plug 'itchyny/lightline.vim'
" Adding support for bash
Plug 'WolfgangMehner/bash-support'
" Adding support for markdown
Plug 'gabrielelana/vim-markdown'
" Ending the plugin stuff
call plug#end()
" --------------------------------------

" ------------SYNTAX-SNAKEMAKE----------
au BufNewFile,BufRead Snakefile set syntax=snakemake
au BufNewFile,BufRead *.smk set syntax=snakemake

" -----------KEYBOARD NINJA------------
set pastetoggle=<F3>

" -----------SPELL CHECK--------------
hi clear SpellBad
hi SpellBad cterm=underline ctermfg=186
