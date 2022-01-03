""" load packages -
call plug#begin('~/.config/nvim/plugged')
  Plug 'sweitzma/vim-colors-meh'               " minimal colorscheme
  Plug 'sheerun/vim-polyglot'                  " lazy loading many syntax types
  Plug 'tpope/vim-commentary'                  " comment/uncomment with gcc
  Plug 'junegunn/fzf.vim'                      " fzf bindings and functions
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'tpope/vim-repeat'                      " add easy plugin support to vim repeats
  Plug 'tpope/vim-fugitive'                    " git funtionality
  Plug 'itchyny/lightline.vim'                 " better status bar
  Plug 'mengelbrecht/lightline-bufferline'     " buffer status in tabs
  Plug 'jiangmiao/auto-pairs'                  " automatically complete pairs
  Plug 'machakann/vim-sandwich'                " surrounding symbol manipulation
  Plug 'tpope/vim-speeddating'                 " better date incrementing
  Plug 'godlygeek/tabular'                     " needed for vim-markdown
  Plug 'plasticboy/vim-markdown'               " markdown sytax and concealing

  " Staging
  Plug 'itchyny/calendar.vim'                  " calendar app
  Plug 'nvim-lua/plenary.nvim'                 " needed for telescope
  Plug 'nvim-telescope/telescope.nvim'         " fuzzy finder over lists
  Plug 'nvim-treesitter/nvim-treesitter'       " code parsing
        \ , {'do': ':TSUpdate'} 
  Plug 'takac/vim-hardtime'                    " break slow habits in Vim


  " Do I use these?
  " Plug 'w0rp/ale'                              " linter
  Plug 'jremmen/vim-ripgrep'                   " use ripgrep within vim
  Plug 'kana/vim-arpeggio'                     " map chord key press
  Plug 'easymotion/vim-easymotion'             " easy motions
  Plug 'junegunn/goyo.vim'                     " distraction-free writing in Vim

  " Plugin ideas
  "  - tmux integration
  "  - hardmode
  "  - telescope https://github.com/nvim-telescope/telescope.nvim
call plug#end()

""" [plugin] Easymotion
map <Space> <Plug>(easymotion-prefix)
map <Space><Space> <Plug>(easymotion-s)

""" [plugin] Ale
let g:ale_linters = {
  \'ruby': ['ruby', 'rubocop'],
  \'jsx': ['eslint'],
  \'javascript': ['eslint'],
  \'javascript.jsx': ['eslint'],
\}
let g:ale_set_highlights = 1

""" [plugin] Lightline
set laststatus=2
set showtabline=2
let g:lightline#bufferline#show_number     = 1
let g:lightline#bufferline#shorten_path    = 1

let g:lightline                  = {}
let g:lightline.colorcolumn      = 'wombat'
let g:lightline.tabline          = {}
let g:lightline.tabline.left     = [['buffers']]
let g:lightline.tabline.right     = []

let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}
let g:lightline.active           = {}
let g:lightline.active.left      = [['mode', 'paste'], ['readonly', 'filename', 'modified']]
let g:lightline.active.right     = [['lineinfo'], ['percent'],['fileformat', 'fileencoding', 'filetype']]

""" [plugin] vim-riprep
let g:rg_highlight = 1

""" [plugin] calendar.vim
let g:calendar_clock_12hour = 1
let g:calendar_date_month_name = 1

""" [plugin] vim-markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_auto_insert_bullets = 1 " note this may cause issues
let g:vim_markdown_new_list_item_indent = 0

""" [plugin] vim-hardtime
let g:hardtime_default_on = 1
let g:hardtime_maxcount = 4
let g:hardtime_timeout = 1000
