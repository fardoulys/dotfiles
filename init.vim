" Just such a great dotfile


" Plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }   " autocompletion
Plug 'scrooloose/nerdtree'                                      " folder view
Plug 'rafi/awesome-vim-colorschemes'                            " because who wants to pick just one theme
Plug 'vim-airline/vim-airline'                                  " I basically just use it for the mode
Plug 'vim-airline/vim-airline-themes'                           " gotta theme
Plug 'tpope/vim-eunuch'                                         " Unix operations, but in vim
Plug 'tpope/vim-surround'                                       " it's 2018 brackets can close themselves
Plug 'w0rp/ale'                                                 " there's lint in my belly button and my code
Plug 'airblade/vim-gitgutter'                                   " I have a bad memory, gitgutter does not
Plug 'ervandew/supertab'                                        " you literally only have to press tab

call plug#end()

let g:deoplete#enable_at_startup = 1


" Tweaks
set nocompatible 		" vim not vi, thanks
syntax on			" enable syntax highlighting
set encoding=utf8
set mouse=a			" sometimes you've just gotta click
set backspace=indent,eol,start  " make backspace work like backspace should work
set number                      " line numbers
set hidden                      " switch between buffers without saving
set showmode                    " show current mode in cli
set showcmd                     " show typed keys when more are expected
set incsearch                   " highlight while searching
set hlsearch                    " keep matches highlighted
set cursorline                  " wheres my cursor at?
set wrapscan                    " wrap those searches
set nowrap                      " don't wrap the non-searches
set ruler
" Tabs
set autoindent			" indent by previous line
set smarttab                    " clever
set expandtab			" spaces, not tabs
set softtabstop=4		" 4 spaces
set shiftwidth=4		" 4... spaces
set shiftround			" indent to next multiple of... 4 spaces


" Colours
if (has("termguicolors"))
    set termguicolors
endif
let base16colorspace=256        " more colours please
colorscheme gotham256

" airline
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fints=1

" Nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif     " open nerd tree if I open vim without any files
map <C-o> :NERDTreeToggle<CR>
