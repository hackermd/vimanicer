call plug#begin('~/.vim/plugged')
Plug 'nvie/vim-flake8'                 " Python PEP8 style checker
Plug 'sickill/vim-monokai'             " Monokai color skeme
Plug 'tpope/vim-commentary'            " Commenting operator gc
Plug 'szw/vim-maximizer'               " Maximize windows
Plug 'sirver/ultisnips'                " UltiSnips
Plug 'honza/vim-snippets'              " Snippets
Plug 'scrooloose/nerdtree'             " Nerd tree
Plug 'Xuyuanp/nerdtree-git-plugin'     " Nerd tree with git integration
Plug 'ctrlpvim/ctrlp.vim'              " Fuzzy file finder
Plug 'vim-airline/vim-airline'         " Vim status line
Plug 'edkolev/tmuxline.vim'            " Tmux status line supporting airline
Plug 'tpope/vim-fugitive'              " Git plugin
Plug 'tpope/vim-repeat'                " Repeat all kinds of stuff
Plug 'rking/ag.vim'                    " Silver searcher: faster vimgrep/grep:
Plug 'tpope/vim-surround'              " Surround motions
Plug 'airblade/vim-gitgutter'          " ]c [c
Plug 'scrooloose/syntastic'
Plug 'raimondi/delimitmate'            " Brackets
Plug 'benmills/vimux'                  " Tmux integration
Plug 'Yggdroot/indentLine'             " Highlight intendation
Plug 'vim-scripts/indentpython.vim'    " Python indent block selection
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'dense-analysis/ale'              " Asynchronous Lint Engine
Plug 'aliou/bats.vim'                  " Bash Automated Test System
Plug 'cespare/vim-toml'                " Tom's Obvious, Minimal Language
Plug 'JuliaEditorSupport/julia-vim'    " Julia Language
Plug 'aklt/plantuml-syntax'            " PlantUML Language
call plug#end()

"=======================================================================
" Basic settings {{{
"=======================================================================
set clipboard=unnamed
set backspace=indent,eol,start
set nocompatible
set dictionary+=/usr/share/dict/words " Specify the builtin list of words for C-X C-K completion
set thesaurus+=~/.vim/extra/mthesaur.txt
set spelllang=en_us
set nospell
syntax on                           " enable syntax highlighting
filetype on
filetype indent on
filetype plugin on
set shiftwidth=4                    " number of spaces to autoindent
set tabstop=4                       " # spaces shown for one TAB
set softtabstop=4                   " # spaces that are actually inserted/removed for a tab
set expandtab                       " insert spaces when hitting TAB (with above options)
set noautoindent                    " disable autoindenting
set nosmartindent                   " disable smart indenting
set relativenumber                  " view line numbers
set number                          " show current line number (others will still be relative)
set noshowmode
set ruler                           " always show cursor position
set showcmd                         " display incomplete commands on lower right
set complete-=t
set hidden                          " edit another buffer while another one is unsaved
set lazyredraw                      " don't update the display while executing macros
set laststatus=2                    " always show status line
set autoread                        " automatically read a file that has changed on disk
set wildmenu                        " show a menu of possible completions when TABing incomplete commands
set wildmode=list:longest,full      " how wild mode should behave
set guioptions-=T                   " remove toolbar in gVim
set guioptions-=r                   " remove right scrollbar
set guioptions-=R                   " remove right scrollbar
set guioptions-=l                   " remove left scrollbar
set guioptions-=L                   " remove left scrollbar
set hlsearch                        " highlight search results, C-/ to clear the highlighting
set incsearch                       " incremental search: search as you type the query string
set ignorecase                      " ignores case while searching
set smartcase                       " if a search contains a upper case char, make search case sensitive
set diffopt=vertical                " always split vertical with :diffsplit otherfile
set tags=./tags;/
set wildignore+=*.o,*.obj,.git,*.class,target,project,build " ignore files for command-t
set wrap                            " wrap whole words
set linebreak                       " vim will break lines at the chars given in 'set brakeat'
set showbreak=......\|\             " show linebreaks with: ......| wrapped text
set textwidth=0                     " don't insert EOLs at linebreak
set noswapfile                      " don't use swapfile
set nobackup                        " don't create backup files
set splitright                      " split vertical windows right to the current windows
set splitbelow                      " split horizontal windows below to the current windows
set so=7                            " keep 7 empty lines from the cursor to the border when scrolling with j or k
set mouse=a
set visualbell                      " no annoying beeping
set foldenable                      " enable folding
set foldlevelstart=20               " the fold level to show at file open (-1 is the default: fold all)
set foldlevel=20
set foldnestmax=20                  " maximal fold level to show (20 is the default)
set foldmethod=expr
set colorcolumn=80                  " highlight the 80th col
set history=1000                    " set the command line history
set cmdwinheight=10                 " window height for cmd/search history q: q/ resp. C-h (C-f default)
set cursorline                      " Highlight current line
let grepprg="ag\ --nocolor\ --nogroup\ --silent"
set showmatch                       " Highlight (blinking) matching [{( when inserting the closing )}]
set list listchars=tab:⇥\ ,nbsp:·,trail:␣,extends:▸,precedes:◂
set wmh=0                           " mininum window height
colorscheme monokai                 " use custom colorscheme
let g:tex_conceal = ""              " disable concealing in LaTeX
let g:markdown_conceal = 0
" }}}

"------------------------------------------------------------------------------
" {{{2 NERDTree
" -----------------------------------------------------------------------------
" open NERDTree automatically when no files are specified upon startup
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Let quit work as expected if after entering :q the only window left open is NERD Tree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" 2}}}

"------------------------------------------------------------------------------
" {{{2 Ctrlp
" -----------------------------------------------------------------------------
let g:ctrlp_map = '<C-p>'
let g:ctrlp_working_path_mode = ''
let g:ctrlp_show_hidden = 1
let g:ctrlp_root_markers = ['.ctrlp']

" No limit on path length/depth
let g:ctrlp_path_nolim = 1
let g:ctrlp_max_files = 0

" Save cache across sessions => much faster. Refresh with F5.
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_cache_dir = $HOME . "/.cache/ctrlp"

" Use custom command to search for files. Note that wildignore and
" ctrlp_custom_ignore will not work with the custom command.
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'
" 2}}}


" -----------------------------------------------------------------------------
" {{{2 DelimitMate
" -----------------------------------------------------------------------------
let delimitMate_expand_cr = 1
" 2}}}


" -----------------------------------------------------------------------------
" {{{2 UltraSnippits
" -----------------------------------------------------------------------------
let g:python_host_prog = '/usr/local/bin/python3'
let g:UltiSnipsExpandTrigger = '<tab>'
" 2}}}


" -----------------------------------------------------------------------------
" {{{2 Ale
" -----------------------------------------------------------------------------
let g:ale_linters = {'javascript': ['standard'], 'typscript': ['ts-standard'], 'python': ['flake8', 'pylint']}
let g:ale_fixers = {'javascript': ['standard'], 'typscript': ['ts-standard'], 'python': ['black']}
" 2}}}


" -----------------------------------------------------------------------------
" {{{2 Flake8
" -----------------------------------------------------------------------------
let g:flake8_show_in_gutter=1
" 2}}}

" change intend behaviour for certain file types
au BufRead,BufNewFile *.ts set filetype=typescript
au BufRead,BufNewFile *.tsx set filetype=typescript
au BufRead,BufNewFile *.jsx set filetype=javascript
au BufRead,BufNewFile *.yml set filetype=yaml
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType yml  setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType json setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType css  setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType javascript  setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType typescript  setlocal shiftwidth=2 tabstop=2 softtabstop=2

" Set different cursor for insert mode and visual mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Buffer
nnoremap <space>r :CtrlPBuffer<CR>
" Search
nnoremap <space>pa :Ag ""<Left>
" Save
nnoremap <space>w :w<CR>
" Debugger
nnoremap <space>t :NERDTreeToggle<CR>
" Maximize
nnoremap <C-w>m :MaximizerToggle<CR>
vnoremap <C-w>m :MaximizerToggle<CR>gv
" Spell
nnoremap <space>, :setlocal spell! spelllang=en_us<CR>
