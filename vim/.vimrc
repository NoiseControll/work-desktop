"########################
" General settings
"########################
aunmenu Help
aunmenu Window
let no_buffers_menu=1
set mousemodel=popup
set enc=utf-8                                                           " utf-8 по дефолту в файлах
set ls=2                                                                " всегда показывать статусбар
set nu                                                                  " показывать номера строк
set scrolloff=10                                                        " 10 строк при скроле за раз
set noswapfile                                                          " no swap files
autocmd! bufwritepost $MYVIMRC source $MYVIMRC
let g:snippets_dir = "~/.vim/vim-snippets/snippets"			" Указываем каталог с настройками SnipMate

"----------Настройки Vim-Airline
set laststatus=2
let g:airline_theme='badwolf'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
"------------------------------------

"----------Настройка TagBar
map <F4> :TagbarToggle<CR>
let g:tagbar_autofocus = 0 						" Автофокус на Tagbar при открытии
"------------------------------------

"----------Настройка NERDTree
map <F3> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$', '\.o$']	" Игнорируемые файлы с расшриением
"------------------------------------

"----------Настройка TaskList
map <F2> :TaskList<CR>
"------------------------------------


"--------- Работа с кодом
syntax on
"-------------------------------------
"########################





"########################
"Vundle settings
"########################
set nocompatible                                                        " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'                                              " let Vundle manage Vundle, required

"-------Code\project navigation-------
Plugin 'scrooloose/nerdtree'                                            " Project & file navigation
Plugin 'majutsushi/tagbar'                                              " Class/module browser
"-------------------------------------

"-------Other-------
Plugin 'bling/vim-airline'                                              " Status/tabline for vim
Plugin 'vim-airline/vim-airline-theme'					" Themes for vim-airline
Plugin 'fisadev/FixedTaskList.vim'                                      " Pending tasks list
Plugin 'rosenfeld/conque-term'                                          " Console as buffer [???]
Plugin 'tpope/vim-surround'            					" Parentheses, brackets, quotes, XML tags, and more
"--------------------------------------

"------Snippets support------
Plugin 'garbas/vim-snipmate'                                            " Snippets manager
Plugin 'MarcWeber/vim-addon-mw-utils'                                   " Dependencies #1
Plugin 'tomtom/tlib_vim'                                                " Dependencies #2
Plugin 'honza/vim-snippets'                                             " Snippets repo
"--------------------------------------

"------Languages support--------
Plugin 'scrooloose/syntastic'						" Syntax cheking plugin for vim
Plugin 'tpope/vim-commentary'						" Comment stuff out
Plugin 'mitsuhiko/vim-sparkup'						" Sparkup (XML/jinja/html-django/etc.) support

""-----Python
Plugin 'klen/python-mode'                                               " Phyton mode ( docs, refactor, lints, highlighting, run and ipdb and more)
Plugin 'davidhalter/jedi-vim'                                           " Jedi-vim autocomplete plugin
Plugin 'mitsuhiko/vim-jinja'						" Jinja support for vim
Plugin 'mitsuhiko/vim-python-combined'					" Combined Python 2/3 for vim
Plugin 'hynek/vim-python-pep8-indent'                                   " PEP8 indent
Plugin 'jmcantrell/vim-virtualenv'                                      " Virtualenv support in VIM

call vundle#end()							" Required
filetype on
filetype plugin on
filetype plugin indent on
""------------
"--------------------------------------
"#########################




"########################
"Python-mode settings
"########################
"Отключение автокомплита по коду (у нас используется jedi-vim)
let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0

"--------Docs
let g:pymode_doc = 0
let g:pymode_doc_key = 'K'
"--------------------------------------


"-------Code check
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_lint_ignore="E501,W601,C0110"
let g:pymode_lint_write = 1						" Проверка после сохранения
"---------------------------------------


"------Virtualenv support
let g:pymode_virtualenv = 1
"---------------------------------------


"------Install breakpoints
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'
"--------------------------------------


"------Syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
"-------------------------------------


"-----Disable autofold
let g:pymode_folding = 0
"-------------------------------------


"-----Code run
let g:pymode_run = 0
"-------------------------------------
"########################

