set expandtab "табы в пробелы
set autoindent "авто-отступ
set tabstop=4 "кол-во табов


" set listchars=eol:↲,tab:→→,trail:•,nbsp:↔
set list
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:•
set softtabstop=4
set shiftwidth=0
set smarttab
set t_Co=256
set smartindent
set filetype
set ignorecase
" let g:ft=$filetype
set showtabline=2
" set number relativenumber
set nu rnu
" set number
" set nowrap
syntax on
" colorscheme codedark
" colorscheme buddy
" colorscheme Atelier_EstuaryDark
" colorscheme sierra
" colorscheme simple_dark CandyCode
" colorscheme CandyCode
" colorscheme simple_dark
" colorscheme gruvbox
" colorscheme monokain
colorscheme molokai

set nocompatible
" filetype plugin indent on

set encoding=utf-8
set mouse=a

set cursorline
" set cursorcolumn
" set colorcolumn=80

set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
" highlight lCursor ctermfg=NONE ctermbg=Cyan
" function! LightLineKeymap()
"     return &iminsert == 0 ? 'EN' : 'RU'
" endfunction
" highlight lCursor guifg=NONE guibg=Cyan
" let g:NERDCompactSexyComs = 1
set t_md=
set ffs=unix,dos,mac
setlocal swapfile
set clipboard+=unnamedplus
set exrc
set secure
set cmdheight=1
set linebreak
set equalalways
set noshowmode
set laststatus=2

" highlight ColorColumn ctermbg=235 guibg=#2c2d27
" highlight CursorLine ctermbg=235 guibg=#2c2d27
" highlight CursorColumn ctermbg=235 guibg=#2c2d27

let g:python3_host_prog = '/usr/bin/python3'
let g:loaded_ruby_provider = 0
let g:loaded_python_provider = 0



" let g:airline#extensions#tabline#enabled = 1
" let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#buffer_nr_show = 1

" set textwidth=80 
set formatoptions=cqt
set wrapmargin=0

" --------- arduino start ino
let g:arduino_dir = '/usr/share/arduino/'
let g:arduino_home_dir = $HOME.".arduino15"
" let g:arduino_use_slime = 1
" --------- arduino end

let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }

" --------- NERDTree start
let NERDTreeMinimalUI=1
" автооткрытие nerdtree
" autocmd VimEnter * NERDTree | wincmd p
" " Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" let g:NERDTreeDirArrowExpandable = '▸'
" let g:NERDTreeDirArrowCollapsible = '▾'
" let g:NERDTreeWinPos = "left"
"
" Open the existing NERDTree on each new tab.
" autocmd BufWinEnter * silent NERDTreeMirror
nmap <leader>j :NERDTreeToggle<CR>
nmap <leader>k :NERDTreeFocus<CR>
" --------- NERDTree end


" let g:ruby_host_prog = "/home/yuno/.gem/ruby/2.6.0/bin/neovim-ruby-host"
" filetype plugin indent on
" let g:slime_target = "neovim"


nmap <leader>w I<!-- <esc>$a --><esc>0
nmap <leader>b :bp<cr>
nmap <leader>n :bn<cr>
nmap <leader>1 :ls<cr>

nmap <leader>h :split<cr> 
nmap <leader>v :vsplit<cr> 
nmap <leader>q :q!<cr>
nmap <leader>w :w<cr>
nmap <leader>l :ls<cr>
nmap <leader>2 :%!xxd<cr>
imap № #

"imap () ()<left>
"imap {} {}<left>
"imap [] []<left>
"imap <> <><left>
"imap '' ''<left>
"imap "" ""<left>

imap {<cr> {<cr>}<esc>O
map & O<esc>
map <F5> :! gcc % -o build && ./build<cr>


nmap <leader>t :set nowrap<cr>
nmap <leader>g :set wrap<cr>

" size of windows
nmap <right> <C-W>> 
nmap <left> <C-W><
nmap <up> <C-W>-
nmap <down> <C-W>+


imap <c-l> <c-^>
nmap <leader>m :nohl<cr>
" Убрать мерцание курсора в режиме INSERT и превратить его в линию, вместо блока " let &t_SI = "\<Esc>[6 q"
" let &t_EI = "\<Esc>[2 q"
" let &t_SR = "\<Esc>[4 q"

" set completeopt=longest,menuone
" set number relativenumber

" не подсвечивать строку в режиме insert
" autocmd InsertEnter,InsertLeave * set cursorline!
let g:coc_disable_startup_warning=1


"set shortmess+=F "Read :help shortmess for everything else.
inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
inoremap <silent><expr> <cr> "\<c-g>u\<CR>"


source ~/.config/nvim/pack/plugins/start/townkAutoCompleteChar.vim
source ~/.config/nvim/pack/plugins/start/autoclose.vim
let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"', "'": "'"}
"AutoCloseOn
"sdfsfd"


