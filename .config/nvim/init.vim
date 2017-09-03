if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'airblade/vim-gitgutter'
Plug 'ap/vim-css-color'
Plug 'bronson/vim-trailing-whitespace'
Plug 'drmingdrmer/vim-toggle-quickfix'
Plug 'editorconfig/editorconfig-vim'
Plug 'groenewege/vim-less'
Plug 'hail2u/vim-css3-syntax'
Plug 'haya14busa/vim-operator-flashy'
Plug 'idanarye/vim-merginal'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'kana/vim-operator-user'
Plug 'kopischke/vim-fetch'
Plug 'mattn/emmet-vim'
Plug 'mhartington/nvim-typescript'
Plug 'shuber/vim-promiscuous'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/tpope-vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-syntastic/syntastic'

Plug 'NLKNguyen/papercolor-theme'

Plug 'digitaltoad/vim-pug'
Plug 'slim-template/vim-slim'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-git'
Plug 'tpope/vim-rails'

Plug 'Shougo/neco-vim'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'slashmili/alchemist.vim'
Plug 'zchee/deoplete-jedi'

call plug#end()

set number
set list
set encoding=utf-8
set background=light
set smartcase
set cursorline
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%{fugitive#statusline()}
set statusline+=%*
colorscheme PaperColor

let mapleader=" "
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:deoplete#enable_at_startup = 1
let g:netrw_liststyle = 3
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:airline_theme='papercolor'

map Q <Nop>
map y <Plug>(operator-flashy)
map Y <Plug>(operator-flashy)$
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)
" deoplete tab accept suggestion
imap <expr><tab> pumvisible() ? "\<c-n>"
      \: neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)"
      \: "\<tab>"
tmap <Esc><Esc> <C-\><C-n>
" copy project path
nmap <Leader>- :let @+ = expand("%")<CR>
nmap <Leader>T :tabedit<CR>:terminal<CR>
nmap <Leader>te :tabedit<CR>
nmap <Leader>t% :tabedit %<CR>
nmap <Leader>tl :1,.-1tabdo :tabclose<CR>
nmap <Leader>tr :.+1,$tabdo :tabclose<CR>
nmap <Leader>p :tabedit<CR>:FZF<CR>
nmap <Leader>. :tabedit<CR>:redir @a><CR>:map<CR>:redir END<CR>:put a<CR>
nmap <Leader>, :tabedit ~/.config/nvim/init.vim<CR>
nmap <Leader>r :source /Users/reid.roman/.config/nvim/init.vim<CR>
nmap <Leader>aq :qa<CR>
nmap <Leader>aw :wa<CR>
nmap <Leader>ax :xa<CR>
nmap <Leader>c <Plug>window:quickfix:toggle
nmap <Leader>e :edit<CR>
nmap <Leader>f :tabedit <C-r>+<CR>
nmap <Leader>q :quit<CR>
nmap <Leader>h <C-w>h<CR>
nmap <Leader>j <C-w>j<CR>
nmap <Leader>k <C-w>k<CR>
nmap <Leader>l <C-w>l<CR>
nmap <Leader>!aq :qa!<CR>
nmap <Leader>!e :edit!<CR>
nmap <Leader>!q :quit!<CR>
nmap <Leader>w :write<CR>
nmap <Leader>x :xit<CR>
nmap <Leader>gbr :Gbrowse<CR>
nmap <Leader>gbl :Gblame<CR>
nmap <Leader>gc :Gcommit
nmap <Leader>gco :Git checkout 
nmap <Leader>gd :Gdiff<CR>
nmap <Leader>gdd :Gdelete<CR>
nmap <Leader>ge :Gedit
nmap <Leader>gf :Gfetch<CR>
nmap <Leader>gg :Ggrep<Space>
nmap <Leader>gl :Glog<CR>:copen<CR>
nmap <Leader>gpl :Gpull
nmap <Leader>gps :Gpush
nmap <Leader>gs :Gstatus<CR>
nmap <Leader>gw :Gwrite<CR>
nmap <Leader>1 1gt<CR>
nmap <Leader>2 2gt<CR>
nmap <Leader>3 3gt<CR>
nmap <Leader>4 4gt<CR>
nmap <Leader>5 5gt<CR>
nmap <Leader>6 6gt<CR>
nmap <Leader>7 7gt<CR>
nmap <Leader>8 8gt<CR>
nmap <Leader>9 9gt<CR>
nmap <Leader><Leader> :ls<CR>:b<Space>
