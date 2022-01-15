" Taken from the Vundle github README

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Needs additional steps
Plugin 'Valloric/YouCompleteMe'

" Dependency of faith/vim-go
" fuzzy file, buffer, mru, tag, finder for Vim
Plugin 'ctrlpvim/ctrlp.vim'

" Needs additional steps (e.g. GoInstallBinaries)
Plugin 'fatih/vim-go'

" Useful java plugin
" Plugin 'artur-shaik/vim-javacomplete2'
" autocmd FileType java setlocal omnifunc=javacomplete#Complete

" Sidebar to view ctags
Plugin 'majutsushi/tagbar'

" Supports find and replace of word variants
Plugin 'tpope/vim-abolish'

" Snippets
" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Highlight pig files
Plugin 'motus/pig.vim'

" Kotlin files
Plugin 'udalov/kotlin-vim'

" Snipped expansion (tab by default) can interfere with YCM
" Detect when a snip is visible, then expand it on <cr>
" Also, use tabs for snippet navigation
" See https://github.com/Valloric/YouCompleteMe/issues/420#issuecomment-55940039
"     https://github.com/SirVer/ultisnips/issues/376#issuecomment-69033351
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
let g:UltiSnipsExpandTrigger = "<NUL>"
let g:UltiSnipsEditSplit="vertical"
let g:ulti_expand_or_jump_res = 0
let g:ultisnips_python_quoting_style="single"
function ExpandSnippetOrCarriageReturn()
    let snippet = UltiSnips#ExpandSnippetOrJump()
    if g:ulti_expand_or_jump_res > 0
        return snippet
    else
        return "\<CR>"
    endif
endfunction

inoremap <expr> <CR> pumvisible() ? "\<C-R>=ExpandSnippetOrCarriageReturn()\<CR>" : "\<CR>"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
