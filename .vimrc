"########################
" General settings
"########################

set enc=utf-8                                                           " utf-8 по дефолту в файлах
set ls=2                                                                " всегда показывать статусбар
set nu                                                                  " показывать номера строк
set scrolloff=10                                                        " 10 строк при скроле за раз
set noswapfile                                                          " no swap files
autocmd vimenter * NERDTree                                             " автоматическое отображение NERDTREE при запуске vim
autocmd! bufwritepost $MYVIMRC source $MYVIMRC


"# Работа с кодом
syntax on
"#

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

"-------Other-------
Plugin 'bling/vim-airline'                                              " Status/tabline for vim
Plugin 'fisadev/FixedTaskList.vim'                                      " Pending tasks list
Plugin 'rosenfeld/conque-term'                                          " Console as buffer [???]
Plugin 'tpope/vim-surround'                                             " Parentheses, brackets, quotes, XML tags, and more

"------Snippets support------
Plugin 'garbas/vim-snipmate'                                            " Snippets manager
Plugin 'MarcWeber/vim-addon-mw-utils'                                   " Dependencies #1
Plugin 'tomtom/tlib_vim'                                                " Dependencies #2
Plugin 'honza/vim-snippets'                                             " Snippets repo

"------Languages support--------
""-----Python
Plugin 'klen/python-mode'                                               " Phyton mode ( docs, refactor, lints, highlighting, run and ipdb and more)
Plugin 'davidhalter/jedi-vim'                                           " Jedi-vim autocomplete plugin
Plugin 'mitsuhiko/vim-jinja'						" Jinja support for vim
Plugin 'mitsuhiko/vim-python-combined'					" Combined Python 2/3 for vim


call vundle#end								" Required
filetype on
filetype plugin on
filetype plugin indent on
