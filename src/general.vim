""" basic settings
set ignorecase smartcase          " search case-insensitively unless uppercase characters are used
set hidden                        " allow unsaved buffers to be hidden
set visualbell                    " visual bell = no sounds
set showcmd                       " show current command in status line
set splitbelow splitright         " put new windows below or to the right
set number relativenumber         " line numbers but better
set wildmode=list:full
set spell spelllang=en_us         " set spelling language
set nospell                       " turn off spelling by default
set cursorline                    " highlight current line
set showmatch                     " highlight matching [{()}]
set history=1000
set undolevels=1000

""" spaces, tabs, line sizing
filetype plugin on                " load plugins based on file type
filetype indent on                " load indent settings based on file type
set shiftwidth=2                  " number of spaces to use for indenting
set softtabstop=2                 " number of spaces to use when inserting a tab
set tabstop=2                     " show tabs as 2 spaces
set expandtab                     " convert tabs into spaces
set autoindent                    " copy indent from previous line
set textwidth=120
set colorcolumn=100

""" file type specific settings
au FileType gitcommit set tw=72
au FileType ruby setlocal ts=2 sts=2 sw=2
au FileType python setlocal ts=4 sts=4 sw=4
au FileType javascript setlocal ts=2 sts=2 sw=2
au FileType markdown setlocal conceallevel=0
au FileType tex setlocal conceallevel=0 tw=100

