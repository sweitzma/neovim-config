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

" strikethrough shortcuts
nmap <silent> <Plug>StrikethroughMarkdownBullet
                  \ k$0/[*-]\s<CR>:noh<CR>wi~~<Esc>A~~<Esc>
                  \:call repeat#set("\<Plug>StrikethroughMarkdownBullet")<CR>
nmap <Leader>s <Plug>StrikethroughMarkdownBullet

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

""" HardTime mappings
nnoremap <Leader>h :HardTimeToggle<CR>

""" mappings for terranosco
nmap <Leader>c :Calendar<CR>
autocmd FileType markdown nmap <Leader>d :execute printf('e ~/per/terranosco/content/daily/%s.md', strftime("%Y-%m-%d"))<CR>
autocmd FileType markdown nmap <Leader>w :execute printf('e ~/per/terranosco/content/work/%s.md', strftime("%Y-%m-%d"))<CR>
autocmd FileType calendar nmap <buffer> a :execute printf(
      \   "e ~/per/terranosco/content/daily/%d-%02d-%02d.md",
      \   b:calendar.day().get_year(),
      \   b:calendar.day().get_month(),
      \   b:calendar.day().get_day()
      \ ) <CR><CR>

autocmd FileType calendar nmap <buffer> z :execute printf(
      \   "e ~/per/terranosco/content/work/%d-%02d-%02d.md",
      \   b:calendar.day().get_year(),
      \   b:calendar.day().get_month(),
      \   b:calendar.day().get_day()
      \ ) <CR><CR>


