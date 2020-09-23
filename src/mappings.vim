""" key mappings

nnoremap ; :
nnoremap ' ;
nnoremap j gj
nnoremap k gk

" Modify visual yank to write result to file
vnoremap y :yank<CR>gv:w! ~/.vim/.copy<CR>
noremap <C-p> :!cat ~/.vim/.copy<CR>

" fzf and window splitting
noremap <Leader>f :call fzf#run({'sink': 'edit',   'options': '-i', 'down': 10})<CR>
noremap <Leader>v :call fzf#run({'sink': 'vsplit', 'options': '-i', 'down': 10})<CR>
noremap <Leader>y :call fzf#run({'sink': 'vsplit', 'options': '-i -q ' . expand(ToggleRSpec()), 'down': 10})<CR>

" no more trailing whitespace
noremap <Leader>w :call TrimWhitespace()<CR>

" buffer navigation
nnoremap <Leader>r :bnext<CR>
nnoremap <Leader>e :bprevious<CR>
nnoremap <Leader>bq :bp <BAR> bd #<CR>
nnoremap <Leader>bl :ls<CR>
nnoremap <Leader>l :ls<CR>:b<space>

" searching jumps to middle of screen
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

""" window navigation
nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
